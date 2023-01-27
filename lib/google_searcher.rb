require 'launchy'

# renvoie message si input ARGV vide
def check_if_user_gave_input
  abort("STP, dis moi ce que tu cherches sur Google, relance le programme, bisous!") if ARGV.empty?
end

# Ouverture de la page de résultats Google
def search_google
    Launchy.open("https://www.google.com/search?q=" + ARGV.to_s)
end

def perform
    check_if_user_gave_input
    search_google
end

perform