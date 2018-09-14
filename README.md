## README

### TODO:
Improve UX in image loading
- make Upload button responsible (disable/enable, progress status)


Foto uploader to product manager.
- read about carrier_wave

[This is link](http://angular-rails.com) to good article that explains configuration of this project.

### How to install bower component [Documentation](https://github.com/rharriso/bower-rails) 
 - Add new dependency to Bowerfile
 - <code>bin/rake bower:install</code>

## Pages are separated by APPLICATION_NAME:
###Опт
APPLICATION_NAME='obelisk'
###Розница
APPLICATION_NAME='venok'

##How to read logs from Heroku:
  heroku logs -n 500 --app venok-opt-dev | less

## Share database
https://devcenter.heroku.com/articles/heroku-postgresql#sharing-heroku-postgres-between-applications

### Setup docker environment

https://docs.docker.com/compose/rails/

1. Install docker
2. Install docker-compose
3. Make sure project is located in ~/Workspace/opt
4. run
    sudo docker-compose up
5. Create db via rake
    sudo docker-compose run rails bash -l -c "rake db:create"
6. Now you have to setup database. First restart it:
    sudo docker-compose down
    sudo rm ~/Workspace/opt/tmp/pids/server.pid
    sudo docker-compose up
7. Attach to db container and restore db
a)  find and copy container id
    sudo docker ps
b)  connect to it
    sudo docker exec -it 665b4a1e17b6 bash
c)  make restore
    cd /home/opt
    pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d dev_venok database-backup.dump
8. Restart cluster again

## Run docker container
sudo docker run -it -p 3001:3001 -v ~/Workspace/opt:/home/opt ppolushkin/opt_rails:1.2 bash -l

## Run environment
sudo rm ~/Workspace/opt/tmp/pids/server.pid && sudo docker-compose up

## App
http://localhost:3001 

## PgAdmin
http://localhost:3002