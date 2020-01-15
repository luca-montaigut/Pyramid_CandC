#############################################################################################################                          
#       ______                          _     _                                 _L/L                        #
#       | ___ \                        (_)   | |                              _LT/l_L_                      #
#       | |_/ /   _ _ __ __ _ _ __ ___  _  __| |                            _LLl/L_T_lL_                    #
#       |  __/ | | | '__/ _` | '_ ` _ \| |/ _` |        _T/L              _LT|L/_|__L_|_L_                  #
#       | |  | |_| | | | (_| | | | | | | | (_| |      _Ll/l_L_          _TL|_T/_L_|__T__|_l_                #
#       \_|   \__, |_|  \__,_|_| |_| |_|_|\__,_|    _TLl/T_l|_L_      _LL|_Tl/_|__l___L__L_|L_              #
#              __/ |   CONSTRUCTOR & CLIMBER      _LT_L/L_|_L_l_L_  _'|_|_|T/_L_l__T _ l__|__|L_            #
#             |___/                             _Tl_L|/_|__|_|__T _LlT_|_Ll/_l_ _|__[ ]__|__|_l_L_          #
#                                     __ jjs_ _LT_l_l/|__|__l_T _T_L|_|_|l/___|__ | _l__|_ |__|_T_L_  __    #
#                                                                                                           #
#############################################################################################################

# FORMES DES PYRAMIDES
def des_half_pyramid(etage)
  i = 1
  while i != (etage+1) 
    puts "#"*i
    i += 1
  end 
end

def asc_half_pyramid(etage)
  i = 1
  while i != (etage+1) 
    puts " "*(etage-i)+"#"*i
    i += 1
  end 
end

def full_pyramid(etage)
  i = 1
    while i/2 != (etage) 
      if i % 2 != 0
      puts " "*(etage-i/2)+"#"*i
      end
    i += 1
    end  
end

def wtf_pyramid(etage)
  i = 1
    while i != etage 
      if i % 2 != 0
      puts " "*(etage/2-i/2)+"#"*i
      end
      i += 1
    end
    j = i
    while j != 0 
      if j % 2 != 0
      puts " "*(etage/2-j/2)+"#"*j
      end
      j = j - 1
    end  
end

# CONSTRUCTEUR EN FONCTION DU CHOIX
def build (etage, type)
  if etage == 0
    puts "\n\n|-----------------------------------------------------------------------|"
    puts "| \"...zZzzz..zZzz...zZz... Hé toi!                                      |"
    puts "|  Qu'est-ce que tu fous dans ma cachette !!!                           |"
    puts "|  Va plutôt faire une pyramide avec au moins 1 étage couillon !\"       |"
    puts "|-----------------------------------------------------------------------|"
    puts "                                                |_______________________________   _/)/)"
    puts "                                                                                  (-.- )"
    puts "                                                                                (\")(\")_o"
    puts "\n\n"
  else
    pyramide = 0
    case type
      when 1
        asc_half_pyramid(etage)
        return pyramide += 1
      when 2
        des_half_pyramid(etage)
        return pyramide += 1
      when 3
        full_pyramid(etage)
        return pyramide += 1
      when 4
        wtf_pyramid(etage)
        return pyramide += 1
      else 
        puts "Mauvaise commande ! On recommence, un peu de concentration stp !\n\n"
    end
  end
end

# MOYENNE
def game (stairs)
  stairs = stairs
  climber = 0
  compt = 0
  while climber != stairs
    launch = (rand(6).succ)
    if launch == 5 || launch == 6
      climber +=1
    elsif launch == 1
      climber = climber - 1
    else
    end
    compt += 1
  end
  return compt
end

def average_finish_times(etage)
  stairs = etage
  results = []
  total = 0
  i = 0
  while i != 100
    jeu = game(stairs)
    results << jeu
    i += 1
  end
  results.each do |result|
    total = total + result
  end
  return total
end

# LANCER DU DE
def roll_dice()
  print "Lancer le dé avec la touche \"Entrer\" :"
  egg = gets.chomp
  if egg != ""
    puts "\n\n|-----------------------------------------------------------------------|"
    puts "| \"...zZzzz..zZzz...zZz... Quoi ?! PAS MOYEN DE PIONCER TRANQUILLE ICI !|"
    puts "|  Bon puisque tu es là je vais te filer une astuce :                   |"
    puts "|  Laisse la touche \"Entrer\" enfoncée pour monter vite, vas-y essaye ! \"|"
    puts "|-----------------------------------------------------------------------|"
    puts "                                                |_______________________________   _/)/)"
    puts "                                                                                  (-.- )"
    puts "                                                                                (\")(\")_o"
    puts "\n\n"
  else
      random = (rand(6).succ)
  case random
  when 1       
    puts "   *********"
    puts "  |         |"
    puts "  |    #    |"
    puts "  |         |"
    puts "   *********"
    print "1 : "
  when 2       
    puts "   *********"
    puts "  | #       |"
    puts "  |         |"
    puts "  |       # |"
    puts "   *********"
    print "2 : "
  when 3       
    puts "   *********"
    puts "  | #       |"
    puts "  |    #    |"
    puts "  |       # |"
    puts "   *********"
    print "3 : "
  when 4       
    puts "   ********* "
    puts "  | #     # |"
    puts "  |         |"
    puts "  | #     # |"
    puts "   *********"
    print "4 : "
  when 5       
    puts "   *********"
    puts "  | #     # |"
    puts "  |    #    |"
    puts "  | #     # |"
    puts "   *********"
    print "5 : "
  when 6       
    puts "   ********* "
    puts "  | #     # |"
    puts "  | #     # |"
    puts "  | #     # |"
    puts "   ********* "
    print "6 : "
  end
  return random
  end
end   

# DEPLACEMENT
def move (roll)
  climb = 0
  if roll == 5 || roll == 6
    puts "Tu montes sur la marche suivante\n\n"
    return climb +=1
  elsif roll == 1 
    puts "Tu descendS sur la marche précèdente\n\n"
    return climb = climb - 1
  else
    puts "Tu restes sur la marche actuelle\n\n"
    return climb = 0
  end
end

# PROGRAMME
def perform
  puts "\n\n###################################################################################################################\n\n"
  puts "                       Salut, bienvenue dans \"Pyramid Constructor & Climber\" ! "
  puts "\n###################################################################################################################\n\n"
  pyramide_build = 0
  while pyramide_build != 1
    puts "  Combien d'étage(s) veux-tu pour ta pyramide ?"
    print "> "
    etage = gets.chomp.to_i
    puts "\n\n  Tu préfères une pyramide : \n1. Ascendante \n2. Descedante \n3. Complète \n4. Losange \n(Choisir en tapant le chiffre correspondant)"
    print "> "
    type = gets.chomp.to_i
    puts "  Voici ta Pyramide :\n\n"
    pyramide_build = build(etage, type)
  end
  puts "\n  Whao ! C'est de toute beauté !\n\n"
  puts "\n###################################################################################################################\n\n"
  puts "  Tu veux tenter de grimper dessus ?\n\n"
  puts "  Les règles sont simples : tu vas lancer un dé :\n> Si tu fais 5 ou 6 : tu montes d'une marche\n> Si tu fais 2, 3 ou 4 : tu restes sur place\n> Si tu fais 1 : tu redescends d'une marche"
  average = average_finish_times(etage)
  puts "\n  En moyenne sur 100 parties avec une pyramide de cette taille, tu atteindras le sommet en : #{average/100} étapes\n\n"
  user = 0
  try = 0
  while user != etage
    roll = roll_dice
    step = move (roll)
    user = user + step
    print ">  Tu es à l'étage n°#{user} sur #{etage}. "
    try += 1
  end  
  puts "\n\n###################################################################################################################\n\n"
  puts "         BRAVO ! Te voilà en tout en haut ! \n         Il t'a fallu #{try} étapes pour atteindre le sommet mais quelle vue magnifique !\n         Ça vallait le coup ! =)"
  puts "\n###################################################################################################################\n\n"
end

perform

#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit
