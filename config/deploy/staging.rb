set :stage, :staging
set :branch, 'master'
set :full_app_name, "#{fetch(:application)}_#{fetch(:stage)}"
set :server_name, 'landing-staging.getonstageapp.com'

server '103.92.26.42',
       user: 'ubuntu', roles: %w[web app db], primary: true

set :deploy_to,
    "/home/#{fetch(:deploy_user)}/www/#{fetch(:application)}"
set :enable_ssl, false
