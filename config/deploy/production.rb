set :application, "sample_app_deploy"
set :rails_env, 'production'
set :branch, "master"

server "45.118.134.212", user: "root", roles: %w{web, app, db}, primary: true
set :deploy_to, "/var/www/apps/#{fetch(:application)}"


set :ssh_options, { forward_agent: true, user: "root", keys: %w(~/.ssh/id_rsa.pub) }
