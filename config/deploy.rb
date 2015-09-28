set :stages, %w(production)
require 'capistrano/ext/multistage'

set :application, "spiritfedwomen"

set :keep_releases, "2"

# =============================================================================
# SOURCE CONTROL
# =============================================================================

set :user, "root"
set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :repository,  "https://github.com/electrokate/spiritfedwomen.git"
set :branch, $1 if `git branch` =~ /\* (\S+)\s/m
ssh_options[:forward_agent] = true


# =============================================================================
# OPTIONAL VARIABLES
# =============================================================================
set :use_sudo, true                                                                                     # may as well use sudo in case we run into permission problems
set :deploy_via, :remote_cache                                                                               # it didn't work without export, I want to use remote_cache                                                                    # it didn't work without export, I want to use remote_cache
set :port_number, "22"                                                                               # CHANGE THIS LINE TO USE YOUR ASSIGNED PORT
set :port, 22


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end


# =============================================================================
# TASKS
# =============================================================================
namespace :deploy do
	
  task :start, :roles => :app do
    run "cd #{deploy_to}/current; mongrel_rails start -e production -p #{port_number} -d"
  end
  task :stop, :roles => :app do
    run "cd #{deploy_to}/current; mongrel_rails stop"
  end
  task :restart, :roles => :app do
    run "cd #{deploy_to}/current; mongrel_rails stop; mongrel_rails start -e production -p #{port_number} -d"
    run "echo \"WEBSITE HAS BEEN DEPLOYED\""
  end

end

# Override default tasks which are not relevant to a non-rails app.
namespace :deploy do
  task :migrate do
    puts "    not doing migrate because not a Rails application."
  end
  task :finalize_update do
    puts "    not doing finalize_update because not a Rails application."
  end
  task :link_production_db do
    puts "    not doing finalize_update because not a Rails application."
  end
  task :start do
    puts "    not doing start because not a Rails application."
  end
  task :stop do 
    puts "    not doing stop because not a Rails application."                                            
  end
  task :restart do
      
    # Create sym link to static files.
    run "ln -s #{deploy_to}static/files/ #{deploy_to}current/source/sites/default/files"
    # Set permissions to Files directory to allow uploads
    
    # Set ownership to the files directory to the visitor or else files are not able to be uploaded. 
    run "chown -Rf www-data:www-data #{deploy_to}static/files"
    run "chmod -R 777 #{deploy_to}static/files"
    
    # Link settings file
    run "ln -s #{settings_file} #{deploy_to}current/source/sites/default/settings.php"
    
  end
  
  task :after_deploy do
    cleanup
  end
  
  
  
end