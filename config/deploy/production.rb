set :stage, :production
set :rails_env, 'production'

role [:app, :web, :db], %w{production@haterslist.llj.click}

server 'haterslist.llj.click', user: 'production', roles: %w{web app db}, ssh_options: { forward_agent: true }

set :deploy_to, '/home/production/apps/haterslist'
