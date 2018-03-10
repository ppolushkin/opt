# coding: utf-8

class PagesRestController < RestApplicationController

   skip_before_filter :authorize, :only => [:get_page_by_ref]
   #skip_before_filter :authorize

  #POST api/pages
  # {
  #     reference: "reference",
  #     title: "page name",
  #     content : "some text"
  # }
  def add_page

    begin

      if params[:reference] == nil
        render json: {
            :message => 'parameter reference is empty'
        },
               status: 400
        return
      end

      if params[:title] == nil
        render json: {
            :message => 'parameter title is empty'
        },
               status: 400
        return
      end

      page = Page.find_by(reference: params[:reference], application_name: APPLICATION_NAME)
      if page != nil
        render json: {
            :message => 'page with such reference is already exist'
        },
               status: 400
        return
      end

      newPage = Page.new
      newPage.reference = params[:reference]
      newPage.title = params[:title]
      newPage.application_name = APPLICATION_NAME

      revision = Revision.new
      revision.content = params[:content]

      newPage.save
      revision.update_attribute('page_id', newPage.id)
      revision.save

      render json: {
          :message => 'page created'
      },
             status: 200

    rescue Exception => e

      puts 'Error occurred:'
      puts e
      puts e.backtrace.inspect

      render json: {
          :message => 'Exception occurred',
          :error => e.message
      },
             status: 500

    end
  end

  #DELETE api/pages/:ref
  def delete_page

    begin
      if params[:ref] == nil
        render json: {
            :message => 'parameter ref is empty'
        },
               status: 400
        return
      end

      page = Page.find_by(reference: params[:ref], application_name: APPLICATION_NAME)
      if page == nil
        render json: {
            :message => 'page not found'
        },
               status: 404
        return
      end

      page.revisions.each do |revision|
        revision.destroy
      end
      page.destroy

      render json: {
          :message => 'page deleted'
      },
             status: 200

    rescue Exception => e
      puts 'Error occurred:'
      puts e
      puts e.backtrace.inspect

      render json: {
          :message => 'Exception occurred',
          :error => e.message
      },
             status: 500
    end
  end

  #PUT api/pages/:ref
  # {
  #     title: "page name",
  #     content : "some text"
  # }
  def update_page

    if params[:ref] == nil
      render json: {
          :message => 'parameter ref is empty'
      },
             status: 400
      return
    end

    page = Page.find_by(reference: params[:ref], application_name: APPLICATION_NAME)

    if page == nil
      render json: {
          :message => 'page not found'
      },
             status: 404
    else
      last_revision = page.revisions.last
      if last_revision == nil
        render json: {
            :message => 'revision not found'
        },
               status: 404
      else
        page.update_attribute('title', params[:title])
        page.save
        last_revision.update_attribute('content', params[:content])
        last_revision.save
        render json: {
            :message => 'page updated'
        },
               status: 200
      end
    end

  end

  #GET api/pages/
  def get_all_pages
    pages = Page.where(application_name: APPLICATION_NAME)
    render json: pages
  end

  #GET api/pages/:ref
  def get_page_by_ref

    if params[:ref] == nil
      render json: {
          :message => 'parameter ref is empty'
      },
             status: 400
      return
    end

    page = Page.find_by(reference: params[:ref], application_name: APPLICATION_NAME)

    if page == nil
      render json: {
          :message => 'page not found'
      },
             status: 404
    else
      last_revision = page.revisions.last

      if last_revision == nil
        render json: {
            :message => 'revision not found'
        },
               status: 404
      else
        render json: {
            :reference => page.reference,
            :title => page.title,
            :content => last_revision.content
        }
      end

    end

  end

end
