# frozen_string_literal: true

require 'mina/rails'
require 'mina/git'
# require 'mina/rvm'

require 'mina/rbenv' # for rbenv support. (https://rbenv.org)
# require 'mina/rvm'    # for rvm support. (https://rvm.io)

# Basic settings:
#   domain       - The hostname to SSH to.
#   deploy_to    - Path to deploy into.
#   repository   - Git repo to clone from. (needed by mina/git)
#   branch       - Branch name to deploy. (needed by mina/git)

set :application_name, 'TheHoneydew'
# set :domain, '91.210.186.187'
set :domain, 'kru.keva.su'
set :deploy_to, '/var/www/project'
set :shared_path, -> { "#{fetch(:deploy_to)}/shared" }
set :current_path, -> { "#{fetch(:deploy_to)}/current" }
set :repository, 'git@github.com:IgorPolyakov/TheHoneydew.git'
set :branch, 'master'

# Optional settings:
set :user, 'deploy' # Username in the server to SSH to.
set :identity_file, '~/.ssh/github.pub'
#   set :port, '30000'           # SSH port number.
#   set :forward_agent, true     # SSH forward_agent.

# shared dirs and files will be symlinked into the app-folder by the 'deploy:link_shared_paths' step.
set :shared_dirs, fetch(:shared_dirs, []).push('log')
set :shared_files, fetch(:shared_files, []).push('config/database.yml', 'config/secrets.yml')

# This task is the environment that is loaded for all remote run commands, such as
# `mina deploy` or `mina rake`.
task :environment do
  # If you're using rbenv, use this to load the rbenv environment.
  # Be sure to commit your .ruby-version or .rbenv-version to your repository.
  invoke :'rbenv:load'

  # For those using RVM, use this to load an RVM version@gemset.
  # set :rvm_path, '/usr/local/rvm/scripts/rvm'
  # invoke :'rvm:use', 'ruby-2.4.1'
end

# Put any custom commands you need to run at setup
# All paths in `shared_dirs` and `shared_paths` will be created on their own.
set :shared_paths, ['config/database.yml', 'config/secrets.yml', 'log']
task :setup do
  command %(rbenv install 2.4.2)
  # {fetch(:deploy_to)}/#{fetch(:current_path)}
  command %(mkdir -p "#{fetch(:deploy_to)}/shared/config")
  command %(touch "#{fetch(:deploy_to)}/shared/config/database.yml")
  command %(touch "#{fetch(:deploy_to)}/shared/config/secrets.yml")
  command %(echo "-----> Be sure to edit '#{fetch(:deploy_to)}/shared/config/database.yml and secrets.yml'.")
end

desc 'Deploys the current version to the server.'
task :deploy do
  # uncomment this line to make sure you pushed your local branch to the remote origin
  # invoke :'git:ensure_pushed'
  deploy do
    # Put things that will set up an empty directory into a fully set-up
    # instance of your project.
    invoke :'git:clone'
    # command %(APP_VERSION="$(git describe --tags)")
    invoke :'deploy:link_shared_paths'
    invoke :'bundle:install'
    invoke :'rails:db_create'
    invoke :'rails:db_migrate'
    invoke :'rails:assets_precompile'
    invoke :'deploy:cleanup'

    on :launch do
      in_path(fetch(:current_path)) do
        command %(mkdir -p tmp/)
        command %(touch tmp/restart.txt)
      end
    end
  end
end
# For help in making your deploy script, see the Mina documentation:
#
#  - https://github.com/mina-deploy/mina/tree/master/docs
