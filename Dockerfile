# Use an official Python runtime as a parent image
FROM ubuntu:14.04

# Set the working directory to /app
RUN mkdir /home/opt
WORKDIR /home/opt

# Copy the current directory contents into the container at /app
COPY Gemfile /home/opt/Gemfile
COPY Gemfile.lock /home/opt/Gemfile.lock

RUN apt-get -qy update && apt-get -qy upgrade && apt-get -qy install curl && apt-get -qy install gnupg2
RUN command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
RUN curl -L https://get.rvm.io | bash -s stable
RUN /bin/bash -c "source /etc/profile.d/rvm.sh && rvm install 1.9.3 && gem update"
RUN /bin/bash -c "source /etc/profile.d/rvm.sh && gem install nokogiri --version '1.6.8.1' && gem install rails --version '4.2.1'"

# Make port 3001 available to the world outside this container
EXPOSE 3001

RUN apt-get -qy install postgresql postgresql-contrib libpq-dev
RUN echo >> /etc/profile && echo "source /etc/profile.d/rvm.sh" >> /etc/profile

# Define environment variable
# You can find it in heroku
#ENV AWS_ACCESS_KEY_ID key_id
#ENV AWS_SECRET_ACCESS_KEY_ID secket
#ENV RAILS_ENV development

RUN /bin/bash -c "source /etc/profile.d/rvm.sh && bundle update"
RUN /bin/bash -c "source /etc/profile.d/rvm.sh && bundle install"