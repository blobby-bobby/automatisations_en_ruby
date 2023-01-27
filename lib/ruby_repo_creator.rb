# donne des instructions si ARGV vide
def check_if_user_gave_input
    abort("STP, donne un petit nom à ton dossier pour que je crée le repo, bisous !") if ARGV.empty?
end

# demande le nom du repo à créer avec ARGV
def get_folder_name
    return folder_name = ARGV.first
end

# les lignes de commandes dans le terminal pour créer le repo
def create_folder(get_folder_name)
    Dir.mkdir(get_folder_name) # crée dossier au nom input ARGV
    Dir.chdir(get_folder_name) # rentre dans dossier créé
    
    system("touch Gemfile README.md .env") # crée les fichiers nécessaires au démérrage
    system('echo "Voilà ton repo en Ruby" >> README.md') # Une ligne pour renseigner le read me
    system('echo "source "https://rubygems.org"" >> Gemfile') # source Gemfile
    system("echo 'ruby '3.0.0'' >> Gemfile") # la version de Ruby    
    system("echo 'gem 'rubocop'' >> Gemfile") # une gem
    system("echo 'gem 'rspec'' >> Gemfile") # une autre gem
    system("mkdir lib") # le dossier lib
    system("mkdir spec") # le dossier spec 
    system("rspec --init") # rspec + fichier de base spec
    system("git init") # initialisation du répertoire git
end

#Les méthodes imbriquées pour lancer le programme
def perform
    check_if_user_gave_input
    create_folder(get_folder_name)
end

perform