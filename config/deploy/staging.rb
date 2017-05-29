set :stage, :staging
set :rails_env, 'production'

role [:app, :web, :db], %w{production@haterslist-staging.llj.click}

server 'haterslist-staging.llj.click', user: 'production', roles: %w{web app db}, ssh_options: { forward_agent: true }

set :deploy_to, '/home/production/apps/haterslist'
