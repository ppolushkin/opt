class ImagesController < RestApplicationController

  # skip_before_filter :authorize, :only => [:upload]

  #
  # GET api/images
  #
  def get_images

    directory = getDirectory

    files = []
    directory.files.each do |f|
      file = {
          :url => 'http://venok-images.s3.amazonaws.com/' + f.key,
          :name => f.key,
          :size => f.content_length,
          :last_modified => f.last_modified
      }
      files.push(file)
    end

    render json: files

  end

  #
  # POST api/images
  #
  def save_image

    myfile = params[:myFile]
    id = params[:id]

    upload_image = Rails.root.join('public', 'uploads', id + File.extname(myfile.original_filename))

    FileUtils.remove_file(upload_image, true)
    File.open(upload_image, 'wb') do |file|
      file.write(myfile.read)
    end

    name = id + '-400x400' + File.extname(myfile.original_filename)
    resized_image = Rails.root.join('public', 'uploads', name)

    image = MiniMagick::Image.open(upload_image)
    image.resize "400x400"
    # image.format "jpg"
    image.write resized_image

    FileUtils.remove_file(upload_image, true)

    # name = params[:myFile].original_filename
    #
    directory = getDirectory

    file = directory.files.create(
        :key => name,
        :body => File.open(resized_image),
        :public => true
    )

    render json: {
        :message => 'success'
    },
           status: 200
  end

  #
  # DELETE api/images/:name
  #
  def delete_image

    if params[:name] == nil
      render json: {
          :message => 'parameter name is empty'
      },
             status: 400
      return
    end

    puts 'I have to delete ' + params[:name]

    directory = getDirectory


    directory.files.each do |f|

      puts f.key

      if f.key == params[:name]
        f.destroy
        puts 'DESTROY'
      end
    end

    # file = directory.files.new(:key => params[:name])
    # file.destroy

    render json: {
        :message => 'success'
    }, status: 200

  end

  private


  def getDirectory
    connection = Fog::Storage.new({
                                      :provider => 'AWS',
                                      :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                                      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY_ID'],
                                      :region => 'eu-west-1'
                                  })

    directory = connection.directories.get("venok-images")
  end

end
