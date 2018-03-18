require 'rubygems'
require 'fog'

# create a connection
connection = Fog::Storage.new({
                                  :provider => 'AWS',
                                  :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                                  :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY_ID'],
                                  :region => 'eu-west-1'
                              })

# First, a place to contain the glorious details
# directory = connection.directories.create(
#     :key    => "venki-spb-test-01",
#     :public => true
# )

directory = connection.directories.get("venki-spb-temp")

# list directories
# p connection.directories

file = directory.files.create(
    :key => 'img/upload.rb',
    :body => File.open("upload.rb"),
    :public => true
)

# https://s3-eu-west-1.amazonaws.com/venki-spb-temp/img/upload.rb
