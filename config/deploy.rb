set :application, "jeremylightsmith"
set :user, "lightsmith"
set :home, "/users/home/lightsmith"
set :deploy_to, "#{home}/apps/#{application}"

set :scm, :git
set :repository, "git@github.com:jeremylightsmith/jeremylightsmith.git"
set :branch, "master"
set :deploy_via, :remote_cache

role :app, "onemanswalk.com"
role :web, "onemanswalk.com"
role :db,  "onemanswalk.com", :primary => true

desc "pull code from github"
task :pull do
  run "cd #{deploy_to} && git pull"
end 
