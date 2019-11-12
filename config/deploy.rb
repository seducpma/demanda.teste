#set :application, "192.168.0.12"
#set :application, "192.168.0.21"
#set :application, "170.81.237.114" #170.81.237.114 - Servidor oficial (hera)  # 177.36.159.102 - Servidor Teste Alvaro/Alexandre
#set :application, "170.81.237.114"
set :application, "192.168.1.36" #170.81.237.114 - Servidor oficial (Atena)
set :application, "170.81.237.114"
set :repository, "git://github.com/seducpma/demanda.teste.git"
set :user, "desenvolvimento"
set :use_sudo, false
set :deploy_to, "/home/#{user}/demanda.teste.seducpma.com"
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server application, :app, :web, :db, :primary => true

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end

   task :custom_symlinks do
     run "rm -rf #{release_path}/config/database.yml"
     run "ln -s #{shared_path}/database.yml #{release_path}/config/database.yml"
     run "ln -s #{shared_path}/503.html #{release_path}/public/503.html"
   end
 end
