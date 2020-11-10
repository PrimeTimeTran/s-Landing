# config valid only for current version of Capistrano
lock '3.9.1'

# ADMIN
set :application, 'stage-landing'
set :deploy_user, 'ubuntu'
set :repo_url,
    'git@gitlab.com:jameshuynh/stage-landing.git'

namespace :deploy do
  after :finishing, 'deploy:cleanup'

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      invoke 'deploy'
    end
  end

  # before :starting,     :check_revision
  after :finishing, :cleanup
end
