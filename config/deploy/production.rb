# =============================================================================
# CHANGE THIS PER CONFIGURATION
# =============================================================================

set :env, "prod"                                                                                       # alpha, beta, prod
set :deploy_to, "/home/catherine/sites/spiritfedwomen/"                                                               # CHANGE THIS LINE TO POINT TO THE CORRECT PATH
set :user, "root"                                                                                   # CHANGE THIS LINE TO USE YOUR OCS USERNAME
set :settings_file, "/home/catherine/sites/spiritfedwomen/secure/settings/settings.php"

# =============================================================================
# MAIN CONFIG
# =============================================================================

role :web, "192.241.206.238"                                                                            # Your HTTP server, Apache/etc
role :app, "192.241.206.238"                                                                            # This may be the same as your `Web` server
role :db,  "192.241.206.238", :primary => true                                                          # This is where Rails migrations will run
