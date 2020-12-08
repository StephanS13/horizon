# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
FavoritePoi.destroy_all
FavoriteCity.destroy_all
Poi.destroy_all
puts "poi destroyed"
City.destroy_all if City.any?
puts "city destroyed"
User.destroy_all

puts "created users"



gab = User.new(nickname: "Gabou",  email:"gabriel@gmail.com", password:"cerise1", firstname:"Gabriel", lastname: "Maire", address: "34 rue du bon pasteur, Lyon", birthdate:"21/10/1997")
file = File.open(Rails.root.join('db/seeds/images/users/gab.jpg'))
gab.avatar.attach(io: file, filename: 'gab.jpg', content_type: 'image/jpg')
gab.save!

marc = User.new(nickname: "Marco",  email:"marc@gmail.com", password:"cerise2", firstname:"Marc ", lastname: "Neusch", address: "3 rue de la ré Lyon ", birthdate:"28/03/1998")
file = File.open(Rails.root.join('db/seeds/images/users/marc.jpg'))
marc.avatar.attach(io: file, filename: 'marc.jpg', content_type: 'image/jpg')
marc.save!

steph = User.new(nickname: "Steph",  email:"steph@gmail.com", password:"cerise3", firstname:"Stéphane", lastname: "Simcic", address: "10 rue de la paix, Paris ", birthdate:"20/08/1990")
file = File.open(Rails.root.join('db/seeds/images/users/Steph.jpg'))
steph.avatar.attach(io: file, filename: 'Steph.jpg', content_type: 'image/jpg')
steph.save!

ophe = User.new(nickname: "Ophé",  email:"ophe@gmail.com", password:"cerise4",firstname:"Ophélie", lastname: "Peyron ", address: "1 place du chateau, Annecy ", birthdate:"20/07/1991")
file = File.open(Rails.root.join('db/seeds/images/users/ophé.jpg'))
ophe.avatar.attach(io: file, filename: 'ophé.jpg', content_type: 'image/jpg')
ophe.save!

david = User.new(nickname: "Davidchou",  email:"dav@gmail.com", password:"cerise5", firstname:"David ", lastname: "Travel", address: "4 rue victor Hugo, Lille ", birthdate:"03/04/1978")
file = File.open(Rails.root.join('db/seeds/images/users/david.jpg'))
david.avatar.attach(io: file, filename: 'david.jpg', content_type: 'image/jpg')
david.save!

puts "created City"

londres = City.new(
  name:"Londres",
  title: "La Ville-Monde",
  description: "Londres est une ville chargée d’histoire, où le médiéval et le style victorien cohabitent avec un monde moderne riche et dynamique. La tour de Londres et l’abbaye de Westminster avoisinent les pubs et les marchés locaux, et des rituels usés par le temps comme la relève de la garde ont lieu pendant que les usagers se précipitent pour prendre le métro. C’est une ville où les touristes peuvent se promener et se divertir et, lorsqu’ils sont fatigués, faire comme les Londoniens : prendre une tasse de thé.",
  country: "Angleterre",
  price_range: 3,
  activity: "Divertir",
  weather: "Modéré",
  environment: "Ville",
  )
file = File.open(Rails.root.join('db/seeds/images/cities/londres_profil.jpg'))
londres.photos.attach(io: file, filename: 'londres_profil.jpg', content_type: 'image/jpg')
londres.save!


lisbonne  = City.new(
  name:"Lisbonne",
  title: "La cité aux mille couleurs",
  description: "Nichée au milieu de sept collines, cette immense ville piétonne offre une alternative enchanteresse aux capitales les plus populaires d’Europe. Avec une vie nocturne animée, des marchés festifs et des musées dynamiques, Lisbonne offre de nombreuses options pour prendre quelques verres de porto, une généreuse portion de bacalhau et une bonne quantité de pastéis de nata.",
  country: "Portugal ",
  price_range: 1,
  activity: "Detendre",
  weather: "Chaud",
  environment: "Ville",
  )
file = File.open(Rails.root.join('db/seeds/images/cities/lisbonne_profil.jpg'))
lisbonne.photos.attach(io: file, filename: 'lisbonne_profil.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join('db/seeds/images/cities/lisbonne_paysage_1.jpg'))
lisbonne.photos.attach(io: file, filename: 'lisbonne_paysage_1.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join('db/seeds/images/cities/lisbonne_paysage_2.jpg'))
lisbonne.photos.attach(io: file, filename: 'lisbonne_paysage_2.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join('db/seeds/images/cities/lisbonne_paysage_3.jpg'))
lisbonne.photos.attach(io: file, filename: 'lisbonne_paysage_3.jpg', content_type: 'image/jpg')

lisbonne.save!

amsterdam  = City.new(
  name:"Amsterdam",
  title: "La Venus du nord",
  description: "Entre ses canaux traversés de ponts pittoresques et ses maisons historiques, Amsterdam est un véritable décor de conte de fées. Les couleurs vives des vélos et des étals de tulipes ne font qu'embellir la vue. Vous y retrouverez la maison d'Anne Frank, le musée Van Gogh et le seul marché aux fleurs flottant du monde, autant d'endroits incontournables qui reflètent une histoire souvent forte. Louez un vélo et mêlez-vous aux milliers d'habitants qui pédalent à travers la ville. Certains préféreront peut-être s'installer dans l'un des nombreux coffee-shops, des établissements qui ont su trouver leur place dans le paysage local.",
  country: "Pays-Bas",
  price_range: 3,
  activity: "Divertir",
  weather: "Modéré",
  environment: "Ville",
  )
file = File.open(Rails.root.join('db/seeds/images/cities/amsterdam_profil.jpg'))
amsterdam.photos.attach(io: file, filename: 'amsterdam_profil.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join('db/seeds/images/cities/amsterdam_paysage_1.jpg'))
amsterdam.photos.attach(io: file, filename: 'amsterdam_paysage_1.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join('db/seeds/images/cities/amsterdam_paysage_2.jpg'))
amsterdam.photos.attach(io: file, filename: 'amsterdam_paysage_2.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join('db/seeds/images/cities/amsterdam_paysage_3.jpg'))
amsterdam.photos.attach(io: file, filename: 'amsterdam_paysage_3.jpg', content_type: 'image/jpg')

amsterdam.save!




marseille  = City.new(
  name:"Marseille",
  title: "La cité Phocéenne",
  description: "Les voyageurs visitent la ville portuaire de Marseille, la troisième ville de France, pour son mélange de style et de tradition. La baie, entourée par le fort Saint-Nicolas et le fort Saint-Jean abrite le château d'If, connu grâce au Comte de Monte-Cristo. Dominées par la basilique Notre-Dame-de-la-Garde, les zones piétonnes et commerçantes de la ville (y compris le quartier franco-africain) se mêlent aux sites historiques. Les voyageurs en quête de divertissement peuvent aller au OK Corral, parc d'attractions sur le thème des cowboys.",
  country: "France",
  price_range: 2,
  activity: "Detendre",
  weather: "Chaud",
  environment: "Plage",
  )
file = File.open(Rails.root.join('db/seeds/images/cities/marseille_profil.jpg'))
marseille.photos.attach(io: file, filename: 'marseille_profil.jpg.jpg', content_type: 'image/jpg')
marseille.save!

seville  = City.new(
  name:"Séville",
  title: "La perle de l'Andalousie",
  description:"Fondée par les Romains et abritant désormais trois sites inscrits au Patrimoine mondial de l'UNESCO, Séville n'a rien perdu de son charme d'antan. Le palais de l'Alcázar est un étonnant mélange de styles architecturaux. Sa superbe cathédrale est aussi connue pour abriter la sépulture de Christophe Colomb. La conception du Metropol Parasol, la plus grande structure de bois au monde, marie lignes droites et courbes, et accueille un marché couvert ainsi qu'un belvédère.",
  country: "Espagne",
  price_range: 2,
  activity: "Detendre",
  weather: "Chaud",
  environment: "Plage",
  )
file = File.open(Rails.root.join('db/seeds/images/cities/seville_profil.jpg'))
seville.photos.attach(io: file, filename: 'seville_profil.jpg.jpg', content_type: 'image/jpg')
seville.save!


marrakech  = City.new(
  name:"Marrakech",
  title: "La ville rouge",
  description: "Souks colorés, architecture maure, jardins intimes et hôtels boutiques… Marrakech est une ville inoubliable. Passez vos journées à explorer les cours intérieures paisibles, les ruelles tortueuses de la Médina historique, promenez-vous dans le Jardin Majorelle ou admirez la beauté de la mosquée avant de passer la soirée dans un riad sublime.",
  country: "Maroc",
  price_range: 1,
  activity: "Divertir",
  weather: "Chaud",
  environment: "Ville",
  )
file = File.open(Rails.root.join('db/seeds/images/cities/marrakech_profil.jpg'))
marrakech.photos.attach(io: file, filename: 'marrakech_profil.jpg.jpg', content_type: 'image/jpg')
marrakech.save!

paris  = City.new(
  name:"Paris",
  title: "La Ville Lumière",
  description: "Aucun autre endroit au monde ne fait autant rêver que Paris. La ville séduit par son art, son architecture, sa culture et sa cuisine, mais il y a aussi des merveilles plus discrètes qui n’attendent qu’à être explorées : les ruelles pavées pittoresques, les pâtisseries au coin de la rue et les petits bistrots douillets qui vous invitent à boire un verre de beaujolais. Préparez-vous à vous approprier Paris.",
  country: "France",
  price_range: 3,
  activity: "Culture",
  weather: "Modéré",
  environment: "Ville",
  )
file = File.open(Rails.root.join('db/seeds/images/cities/paris_profil.jpg'))
paris.photos.attach(io: file, filename: 'paris_profil.jpg.jpg', content_type: 'image/jpg')
paris.save!


palerme  = City.new(
  name:"Palerme",
  title: "L’Heureuse",
  description: "Palerme est un melting pot urbain, marqué par une histoire et une culture riches en contrastes. Découvrez sa diversité architecturale avec ses coupoles de style arabe et monuments baroques, et goûtez aux spécialités locales venues de tous les horizons. Lors de votre visite, ne manquez d'admirer le palais des Normands, la chapelle palatine et l'église de St Jean des Ermites. Les amateurs d'art et de musique ne manqueront également pas de visiter la Galerie d'Art Moderne (aussi appelée la « GAM ») et le musée Salinas ou d'assister à un opéra ou un ballet au Teatro Massimo.",
  country: "Italie",
  price_range: 2,
  activity: "Detendre",
  weather: "Chaud",
  environment: "Plage",
  )


bonifacio  = City.new(
  name:"Bonifacio",
  title: "L'île de beauté ",
  description:"La ville de Bonifacio offre surtout des points de vue magnifiques sur la Méditerranée. Dans le port sont alignés les cafés, les bars, les restaurants et les boutiques haut de gamme. Les amateurs de marche pourront profiter des sentiers balisés des falaises et ceux qui sont en quête de farniente apprécieront forcément les petites criques aux plages sablonneuses du nord de la ville.",
  country: "France",
  price_range: 2,
  activity: "Défouler",
  weather: "Chaud",
  environment: "Nature",
  )


annecy  = City.new(
  name:"Annecy",
  title: "La venise des Alpes",
  description: "Annecy, la préfecture de la Haute-Savoie déborde de charme, d'authenticité et de style. Située à l'extrémité sud du lac d'Annecy et entourée par les sommets enneigés des Alpes, on peut s'y reposer ou bien y pratiquer des sports nautiques. C'est un pied-à-terre idéal pour les amateurs d'escalade, de parapente, de VTT et de randonnée à cheval. Le quartier médiéval est merveilleux avec ses canaux et ses petits ponts décorés de fleurs. En été, n'hésitez pas à faire une visite guidée de la ville ou une croisière en bateau sur le lac pour profiter des excellents restaurants des environs.",
  country: "France",
  price_range: 3,
  activity: "Défouler",
  weather: "Froid",
  environment: "Nature",
  )

briancon  = City.new(
  name:"Briancon",
  title: "Le charme des Alpes",
  description: "Historiquement rattachée au Dauphiné. C'est la ville-centre d'une petite agglomération de six communes, l'unité urbaine de Briançon. Le territoire dont Briançon est la ville principale est appelé Briançonnais ; il couvre le nord du département des Hautes-Alpes. Briançon est considérée comme la plus haute ville de France.",
  country: "France",
  price_range: 2,
  activity: "Défouler",
  weather: "Froid",
  environment: "Nature",
  )


budapest  = City.new(
  name:"Budapest",
  title: "La perle du Danube",
  description: "Plus de 60 000 mètres cubes d'eau bouillonnent quotidiennement dans les 118 sources thermales de Budapest, témoignage de la quantité astronomique d'établissements spécialisés dans l'hydrothérapie ressourçante comme les thermes Gellért aux eaux bouillonnantes surprenantes, les thermes Széchenyi installés au sein d'un bâtiment néobaroque datant de 1913 et les thermes Rudas, ces impressionnants bains turcs érigés au XVIe siècle, révélant une architecture d'origine ottomane. La « Reine du Danube » est également empreinte de beauté naturelle, de culture et d'histoire. Sortez votre appareil photo pour immortaliser le Parlement, la Place des héros et le coucher du soleil sur le Danube.",
  country: "Hongrie",
  price_range: 1,
  activity: "Divertir",
  weather: "Froid",
  environment: "Ville",
  )


olso  = City.new(
  name:"Olso",
  title: "La Ville du tigre",
  description: "La capitale norvégienne vieille de mille ans s'étend autour du Fjord d'Oslo. Cet emplacement incroyable donne une idée des merveilles à découvrir à proximité de la ville. Avec ses nombreuses attractions, notamment le parc des sculptures de Vigeland, le Musée des bateaux vikings, le Musée de Munch et Holmenkollen et les lieux de réflexion, tels que le nouveau Centre Nobel de la Paix et le Centre sur l'Holocauste, Oslo offre de quoi nourrir votre esprit. L'Oslo Pass permet d'emprunter gratuitement les transports publics, de bénéficier de places de stationnement gratuites, ainsi que de nombreuses entrées gratuites pour divers musées et attractions.",
  country: "Norvège",
  price_range: 3,
  activity: "Culture",
  weather: "Froid",
  environment: "Ville",
  )


andorre  = City.new(
  name:"Andorre",
  title: "Le charme sans taxe",
  description: "Andorre est un petit état avec plus de mille ans d’histoire, visitez les églises romanes, les musées et les vignes des micro-producteurs de vin. Amusez-vous dans les centres de loisirs et profitez-en pour participer aux évènements sportifs et culturels. Profitez des activités de montagne et d’aventure, des sports d’hiver, du shopping, du thermoludisme, du bien-être, de la gastronomie locale et des divertissements. Pratiquez le ski, la randonnée, le cyclotourisme, la descente en VTT, l’escalade, le canyoning, les promenades à cheval, etc.",
  country: "Andorre",
  price_range: 2,
  activity: "Défouler",
  weather: "Froid",
  environment: "Nature",
  )


sarajevo  = City.new(
  name:"Sarajevo",
  title: "La Jérusalem des Balkans",
  description: "Sarajevo est le centre politique, financier, social et culturel de la Bosnie-Herzégovine avec une influence régionale dans le divertissement, les médias, la mode et les arts.",
  country: "Bosnie",
  price_range: 1,
  activity: "Culture",
  weather: "Modéré",
  environment: "Nature",
  )



puts "pois Lisboa"

churrasqueira =Poi.new(
    name:"Churrasqueira da Paz",
    category:"Restaurants",
    title: "Portuguais - BBQ et Grillades ",
    description:"",
    address:"Rua da Paz, 78-80, 1200-323 Lisbonne, Portugal",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/churrasqueira.jpg'))
churrasqueira.photos.attach(io: file, filename: 'churrasqueira.jpg', content_type: 'image/jpg')
churrasqueira.save!


cilantro =Poi.new(
    name:"Cilantro & Limon",
    category:"Restaurants",
    title: "Mexicaine-Latino-Espagnole",
    description:"",
    address:"Rua da Nau Catrineta 5A, Lisbonne 1990-184 Portugal ",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/cilantro.jpg'))
cilantro.photos.attach(io: file, filename: 'cilantro.jpg', content_type: 'image/jpg')
cilantro.save!

frango =Poi.new(
    name:"El Rei D.Frango",
    category:"Restaurants",
    title: "Portugais",
    description:"",
    address:"Calçada do Duque, 5, 1900-155 Lisbonne, Portugal ",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/frango.jpg'))
frango.photos.attach(io: file, filename: 'frango.jpg', content_type: 'image/jpg')
frango.save!


lisboa =Poi.new(
    name:"Sr. Lisboa",
    category:"Restaurants",
    title: "Petites assiettes et planches, Portugais",
    description:"",
    address:"R. São José, 136, 1150-325 Lisbonne Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/lisboa.jpg'))
lisboa.photos.attach(io: file, filename: 'lisboa.jpg', content_type: 'image/jpg')
lisboa.save!

daprata52 =Poi.new(
    name:"DaPrata52",
    category:"Restaurants",
    title: "Bars à tapas, Portugais, Méditerranéen",
    description:"",
    address:"R. da prata, 52, 1100-419 Lisbonne, Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/daPrata52.jpg'))
daprata52.photos.attach(io: file, filename: 'daPrata52.jpg', content_type: 'image/jpg')
daprata52.save!

alma =Poi.new(
    name:"Alma",
    category:"Restaurants",
    title: "Portugais, Cuisine de chef",
    description:"",
    address:"R. Anchieta, 15, 1200-023 Lisbonne, Portugal",
    price_range:"€€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/alma.jpg'))
alma.photos.attach(io: file, filename: 'alma.jpg', content_type: 'image/jpg')
alma.save!

alma =Poi.new(
    name:"Alma",
    category:"Restaurants",
    title: "Portugais, Cuisine de chef",
    description:"",
    address:"R. Anchieta, 15, 1200-023 Lisbonne, Portugal",
    price_range:"€€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/alma.jpg'))
alma.photos.attach(io: file, filename: 'alma.jpg', content_type: 'image/jpg')
alma.save!

forno =Poi.new(
    name:"Forno d'Oro",
    category:"Restaurants",
    title: "Brasseries, Pizza, Italien",
    description:"",
    address:"Rua Artilharia, 1- 16,1250-039 Lisbonne, Portugal",
    price_range:"€€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/forno.jpg'))
forno.photos.attach(io: file, filename: 'forno.jpg', content_type: 'image/jpg')
forno.save!

cave =Poi.new(
    name:"Cave Real",
    category:"Restaurants",
    title: "Portugais, Fruits de mer",
    description:"",
    address:"Av. 5 de Outubro, 13/15, 1050-047 Lisbonne, Portugal",
    price_range:"€€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/cave.jpg'))
cave.photos.attach(io: file, filename: 'cave.jpg', content_type: 'image/jpg')
cave.save!

cervejaria =Poi.new(
    name:"Cave Real",
    category:"Restaurants",
    title: "Fruits de mer, Bars à bières",
    description:"",
    address:"Av. Almirante Reis, 1 H, 1150-007 Lisbonne, Portugal",
    price_range:"€€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/cervejaria.jpg'))
cervejaria.photos.attach(io: file, filename: 'cervejaria.jpg', content_type: 'image/jpg')
cervejaria.save!

park =Poi.new(
    name:"PARK",
    category:"Bars / Vie Nocturne ",
    title: "Bars Lounge, Bars à Cocktails",
    description:"",
    address:"Calçada do Combro, 58, 1200-115 Lisbonne, Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/park.jpg'))
park.photos.attach(io: file, filename: 'park.jpg', content_type: 'image/jpg')
park.save!


pensao =Poi.new(
    name:"Pensao Amor",
    category:"Bars / Vie Nocturne ",
    title: "Bars Lounge",
    description:"",
    address:"Rua do Alecrim, 19, 1200-292 Lisbonne, Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/pensao_amor.jpg'))
pensao.photos.attach(io: file, filename: 'pensao_amor.jpg', content_type: 'image/jpg')
pensao.save!

taberna =Poi.new(
    name:"Taberna Do Conde Wine & Tapas",
    category:"Bars / Vie Nocturne ",
    title: "Bars à vins, Tabernas",
    description:"",
    address:"R. do Conde Redondo, 20, 1150-106 Lisbonne, Portugal",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/taberna.jpg'))
taberna.photos.attach(io: file, filename: 'taberna.jpg', content_type: 'image/jpg')
taberna.save!

cinco =Poi.new(
    name:"Taberna Do Conde Wine & Tapas",
    category:"Bars / Vie Nocturne ",
    title: "Bars à Cocktails, Bars Lounge",
    description:"",
    address:"R. Ruben A Leitão, 17, 1200-329 Lisbonne, Portugal",
    price_range:"€€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/cinco.jpg'))
cinco.photos.attach(io: file, filename: 'cinco.jpg', content_type: 'image/jpg')
cinco.save!

urban =Poi.new(
    name:"Urban Beach",
    category:"Bars / Vie Nocturne ",
    title: "Boîtes de nuit/Clubs",
    description:"",
    address:"Cais da Viscondessa, 1200-109 Lisbonne, Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/lux.jpg'))
urban.photos.attach(io: file, filename: 'urban_beach.jpg', content_type: 'image/jpg')
urban.save!

lux =Poi.new(
    name:"LUX ",
    category:"Bars / Vie Nocturne ",
    title: "Boîtes de nuit/Clubs",
    description:"",
    address:"Avenida Infante Dom Henrique, Armazém A – Cais da Pedra a Santa Apolónia, Lisboa ",
    price_range:"€€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/lux.jpg'))
lux.photos.attach(io: file, filename: 'lux.jpg', content_type: 'image/jpg')
lux.save!


alfama  =Poi.new(
    name:"Alfama ",
    category:"Incontournables",
    title: "Sites Touristiques",
    description:"Alfama, le quartier le plus ancien de Lisbonne, vous invite à flâner dans ses petites ruelles. Explorez-le avec un guide local qui vous révèlera des coins secrets et des histoires inattendues.",
    address:"Lisbonne Portugal",
    price_range:"Gratuit",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/alfama.jpg'))
alfama.photos.attach(io: file, filename: 'alfama.jpg', content_type: 'image/jpg')
alfama.save!

mosteiro  =Poi.new(
    name:"Mosteiro dos Jerónimo",
    category:"Incontournables",
    title: "Sites Touristiques",
    description: "Le monastère de Jeronimos à Belém est impressionnant par son échelle, sans parler de ses sculptures. Participez à une visite guidée pour découvrir l'histoire de ce bâtiment de plus de 500 ans. Vous y trouverez le tombeau du navigateur Vasco de Gama, sculpté en style manuélin.",
    address:"Praca do Imperio Belém, Lisbonne 1400-206 Portugal",
    price_range:"Gratuit",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/Mosteiro.jpg'))
mosteiro.photos.attach(io: file, filename: 'Mosteiro.jpg', content_type: 'image/jpg')
mosteiro.save!

praca  =Poi.new(
    name:"Praca",
    category:"Incontournables",
    title: "Sites Touristiques",
    description: "Ancien site du palais de la famille royale portugaise, Praça do Comercio est populaire avec les photographes et les amateurs du shopping. De là, vous pouvez faire un tour en bateau, sauter dans un tuk-tuk pour explorer les sept collines de la ville, ou descendre la célèbre Rua Augusta.",
    address:"Praca do Imperio Belém, Lisbonne 1400-206 Portugal",
    price_range:"Gratuit",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/praca.jpg'))
praca.photos.attach(io: file, filename: 'praca.jpg', content_type: 'image/jpg')
praca.save!

bairro  =Poi.new(
    name:"Bairro Alto",
    category:"Incontournables",
    title: "Sites Touristiques",
    description: "Le quartier de Bairro Alto abrite un grand nombre de bars et de restaurants. Les bâtiments en azulejos sont typiques de la ville. Apprenez-en plus sur le quartier lors d'une visite guidée à pied. Sinon, inscrivez-vous à une tournée des bars pour goûter à la vie nocturne légendaire.",
    address:"Bairro Alto Lisbonne - Portugal ",
    price_range:"Gratuit",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/bairro_alto.jpg'))
bairro.photos.attach(io: file, filename: 'bairro_alto.jpg', content_type: 'image/jpg')
bairro.save!

belem  =Poi.new(
    name:"Belém",
    category:"Incontournables",
    title: "Sites Touristiques",
    description: "Belém est un quartier de Lisbonne situé à 6 km à l'ouest du centre actuel de la ville et à 2 km à l'ouest du pont du 25 avril. Son nom vient d'une déformation au cours du temps de « Bethléem ». Belém correspond à deux paroisses de Lisbonne, la paroisse de Santa Maria de Belém et de São Francisco Xavier.",
    address:"Santa Maria de Belém, 1300-598 Lisbonne, Portugal",
    price_range:"Gratuit",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/belem.jpg'))
belem.photos.attach(io: file, filename: 'belem.jpg', content_type: 'image/jpg')
belem.save!

miradouro  =Poi.new(
    name:"Miradouro da Graca",
    category:"Incontournables",
    title: "Sites Touristiques",
    description: "Cette terrasse populaire offre une vue panoramique spectaculaire sur les toits de la ville et le fleuve au loin.",
    address:"Calçada da Graça, 1100-265 Lisboa, Portugal",
    price_range:"Gratuit",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/miradouro.jpg'))
miradouro.photos.attach(io: file, filename: 'miradouro.jpg', content_type: 'image/jpg')
miradouro.save!

calouste  =Poi.new(
    name:"Musée Calouste-Gulbenkian",
    category:"Incontournables",
    title: "Musées",
    description: "La collection du fondateur du Musée Calouste Gulbenkian réunit une grande variété d'œuvres d'art, de l'antiquité à nos jours. Vous y trouverez entre autres des peintures de Rembrandt et Degas et des bijoux de Lalique. Réservez vos billets coupe-file en avance. Son jardin vaut également le détour.",
    address:"Avenida de Berna 45A, Lisbonne 1067-001 Portugal",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/calouste.jpg'))
calouste.photos.attach(io: file, filename: 'calouste.jpg', content_type: 'image/jpg')
calouste.save!

medeiros  =Poi.new(
    name:"Medeiros e Almeida Museum",
    category:"Incontournables",
    title: "Musées",
    description: "La Casa-Museu Medeiros e Almeida est une maison-musée à Lisbonne, au Portugal, fondée en 1970. Elle est située dans l'ancienne résidence de son fondateur António de Medeiros e Almeida.",
    address:"Rue Rosa Araújo 41, 1250-165 Lisboa, Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/almeida.jpg'))
medeiros.photos.attach(io: file, filename: 'almeida.jpg', content_type: 'image/jpg')
medeiros.save!

benfica  =Poi.new(
    name:"Museu Benfica - Cosme Damiao",
    category:"Incontournables",
    title: "Musées",
    description: "Damião est le musée du club de sport portugais S.L. Benfica. Nommé d'après Cosme Damião, l'un des fondateurs du club en 1904",
    address:"Av. Eusébio da Silva Ferreira Porta 9, 1500-313 Lisboa, Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/benfica.jpg'))
benfica.photos.attach(io: file, filename: 'benfica.jpg', content_type: 'image/jpg')
benfica.save!

militar  =Poi.new(
    name:"Museu Militar de Lisboa",
    category:"Incontournables",
    title: "Musées",
    description: "Découvrez l'histoire militaire du pays ainsi que les oeuvres d'art majeures du richissime patrimoine des institutions.",
    address:"Rue Museu da Artilharia 51, 1100-366 Lisboa, Portugal",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/militar.jpg'))
militar.photos.attach(io: file, filename: 'militar.jpg', content_type: 'image/jpg')
militar.save!

oceanario  =Poi.new(
    name:"Oceanário de Lisboa",
    category:"Activités",
    title: "Aquariums",
    description: "L'Oceanario de Lisbonne est l'un des plus grands aquariums d'Europe, avec une grande variété d'espèces sous-marines—des loutres de mer et raies Manta aux requins. Facilitez-vous la vie en achetant un billet coupe-file, qui vous évitera de faire les longues queues.",
    address:"Esplanada D. Carlos I Doca dos Olivais, Lisbonne 1990-005 Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/oceanario.jpg'))
oceanario.photos.attach(io: file, filename: 'oceanario.jpg', content_type: 'image/jpg')
oceanario.save!

colombo  =Poi.new(
    name:"Centro Colombo",
    category:"Activités",
    title: "Shopping",
    description: "Le centre commercial Colombo est le plus grand centre commercial du Portugal, il se situe au Nord de Lisbonne dans le quartier de Benfica. Il compte 430 boutiques et une surface totale de 120 000 m².",
    address:"Av. Lusíada, 1500-392 Lisboa, Portugal",
    price_range:"€€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/colombo.jpg'))
colombo.photos.attach(io: file, filename: 'colombo.jpg', content_type: 'image/jpg')
colombo.save!

eduardo  =Poi.new(
    name:"Parque Eduardo VII",
    category:"Activités",
    title: "Parcs, Terrains de jeux",
    description: "Le parc Eduardo VII est un parc public à Lisbonne, au Portugal. Il est situé au centre de la ville, au nord de l'Avenida da Liberdade et de la Place du Marquis de Pombal, et s'étend sur 26 hectares.",
    address:"Parque Eduardo VII, 1070-051 Lisboa, Portugal",
    price_range:"Gratuit",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/eduardo.jpg'))
eduardo.photos.attach(io: file, filename: 'eduardo.jpg', content_type: 'image/jpg')
eduardo.save!

estufa  =Poi.new(
    name:"Estufa Fria",
    category:"Activités",
    title: "Jardins",
    description: "L'Estufa Fria est une serre avec trois jardins distincts située dans le parc Eduardo VII entre les rues Alameda Engenheiro Edgar Cardoso et Alameda Cardeal Cerejeira à Lisbonne, Portugal.",
    address:"Parque Eduardo VII, 1070-051 Lisboa, Portugal",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/estufa.jpg'))
estufa.photos.attach(io: file, filename: 'estufa.jpg', content_type: 'image/jpg')
estufa.save!

tram  =Poi.new(
    name:"Tram 28",
    category:"Activités",
    title: "Tramways",
    description: "Venez découvrir la ville avec le  mythique tramways 28",
    address:"Tv. Oliveira à Estrela 19, 1200-613 Lisboa, Portugal",
    price_range:"€",
    city: lisbonne,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/tram_28.jpg'))
tram.photos.attach(io: file, filename: 'tram_28.jpg', content_type: 'image/jpg')
tram.save!

puts "created poi amsterdam"

leeman  =Poi.new(
    name: "Leeman Döner",
    category:"Restaurants",
    title: "Turcs, Kebab",
    description: "",
    address:"TVan Woustraat 160,1073 LW Amsterdam,Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/leeman.jpg'))
leeman.photos.attach(io: file, filename: 'leeman.jpg', content_type: 'image/jpg')
leeman.save!

soup  =Poi.new(
    name: "Soup en Zo",
    category:"Restaurants",
    title: "Soupes",
    description: "",
    address:"Nieuwe Spiegelstraat 54, 1017 DG Amsterdam, Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/soup.jpg'))
soup.photos.attach(io: file, filename: 'soup.jpg', content_type: 'image/jpg')
soup.save!

frens  =Poi.new(
    name: "Frens Haringhandel",
    category:"Restaurants",
    title: "Vendeur de rue",
    description: "",
    address:"Koningsplein, 1017 AW Amsterdam, Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/frens.jpg'))
frens.photos.attach(io: file, filename: 'frens.jpg', content_type: 'image/jpg')
frens.save!

omelegg  =Poi.new(
    name: "Omelegg De Pijp",
    category:"Restaurants",
    title: "Petit déjeuné et brunch",
    description: "",
    address:"Ferdinand Bolstraat 143, 1072 LH Amsterdam, Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/omelegg.jpg'))
omelegg.photos.attach(io: file, filename: 'omelegg.jpg', content_type: 'image/jpg')
omelegg.save!

moeders  =Poi.new(
    name: "Moeders",
    category:"Restaurants",
    title: "Cuisine européenne moderne",
    description: "",
    address:"Rozengracht 251, 1016 SX Amsterdam, Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/moeders.jpg'))
moeders.photos.attach(io: file, filename: 'moeders.jpg', content_type: 'image/jpg')
moeders.save!

kantjil  =Poi.new(
    name: "Kantjil & de Tijger",
    category:"Restaurants",
    title: "Indonésien",
    description: "",
    address:"Spuistraat 291-293, 1012 VS Amsterdam, Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/kantjil.jpg'))
kantjil.photos.attach(io: file, filename: 'kantjil.jpg', content_type: 'image/jpg')
kantjil.save!

seafood   =Poi.new(
    name: "The Seafood Bar",
    category:"Restaurants",
    title: "Fruits de mer",
    description: "",
    address:"Van Baerlestraat 5, 1071 AL Amsterdam, Pays-Bas",
    price_range:"€€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/seafood.jpg'))
seafood.photos.attach(io: file, filename: 'seafood.jpg', content_type: 'image/jpg')
seafood.save!

kerkwijk   =Poi.new(
    name: "Van Kerkwijk",
    category:"Restaurants",
    title: "Cafés",
    description: "",
    address:"Nes 41, 1012 KC Amsterdam ,Pays-Bas",
    price_range:"€€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/kerkwijk.jpg'))
kerkwijk.photos.attach(io: file, filename: 'kerkwijk.jpg', content_type: 'image/jpg')
kerkwijk.save!

cau =Poi.new(
    name: "Van Kerkwijk",
    category:"Restaurants",
    title: "Viandes, Argentin",
    description: "",
    address:"Damstraat 5, 1012 JL Amsterdam, Pays-Bas",
    price_range:"€€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/cau.jpg'))
cau.photos.attach(io: file, filename: 'cau.jpg', content_type: 'image/jpg')
cau.save!

flying  =Poi.new(
    name: "Flying Dutchmen Cocktails",
    category:"Bars/ Vie nocturne",
    title: "Bars à cocktail",
    description: "",
    address:" Singel 460, 1017 AW Amsterdam,Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/flying.jpg'))
flying.photos.attach(io: file, filename: 'flying.jpg', content_type: 'image/jpg')
flying.save!

cannibale  =Poi.new(
    name: "Flying Dutchmen Cocktails",
    category:"Bars/ Vie nocturne",
    title: "Bars",
    description: "",
    address:"Ruysdaelkade 149, 1072 AR Amsterda ,Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/cannibale.jpg'))
cannibale.photos.attach(io: file, filename: 'cannibale.jpg', content_type: 'image/jpg')
cannibale.save!

proeflokaal =Poi.new(
    name: "Proeflokaal Arendsnest",
    category:"Bars/ Vie nocturne",
    title: "Pubs",
    description: "",
    address:"Herengracht 90, 1015 BS Amsterdam,Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/proeflokaal.jpg'))
proeflokaal.photos.attach(io: file, filename: 'proeflokaal.jpg', content_type: 'image/jpg')
proeflokaal.save!

door =Poi.new(
    name: "Door 74",
    category:"Bars/ Vie nocturne",
    title: "Bars à cocktail",
    description: "",
    address:"Reguliersdwarsstraat 74I , 1017 BN Amsterdam, Pays-Bas",
    price_range:"€€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/door.jpg'))
door.photos.attach(io: file, filename: 'door.jpg', content_type: 'image/jpg')
door.save!

winston =Poi.new(
    name: "Winston Kingdom",
    category:"Bars/ Vie nocturne",
    title: "Boites de nuit/ clubs",
    description: "",
    address:"Warmoesstraat 131, 1012 JA Amsterdam, Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/winston.jpg'))
winston.photos.attach(io: file, filename: 'winston.jpg', content_type: 'image/jpg')
winston.save!

smokey =Poi.new(
    name: "Smokey Amsterdam",
    category:"Bars/ Vie nocturne",
    title: "Boites de nuit/ clubs",
    description: "",
    address:"Rembrandtplein 18-20, 1017 CV Amsterdam, Pays-Bas",
    price_range:"€€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/smokey.jpg'))
smokey.photos.attach(io: file, filename: 'smokey.jpg', content_type: 'image/jpg')
smokey.save!

puts "created pois musées dam"

rijksmuseum =Poi.new(
    name: "Rijksmuseum Amsterdam",
    category:"Incontournables",
    title: "Musées",
    description: "Ce musée national néerlandais est le plus important de la région, situé au coeur de la place du Musée. Perdez-vous dans les plus de 200 salles d’exposition, mais ne ratez pas les oeuvres de Rembrandt, Vermeer, et Frans Hals.",
    address:"Museumstraat 1, 1071 XX Amsterdam Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/rijksmuseum.jpg'))
rijksmuseum.photos.attach(io: file, filename: 'rijksmuseum.jpg', content_type: 'image/jpg')
rijksmuseum.save!

frank =Poi.new(
    name: "Maison Anne Frank",
    category:"Incontournables",
    title: "Musées",
    description: "Un hommage à notre histoire commune qui vaut d’être visité et revisité, la maison d’Anne Frank sera toujours une destination importante. Ce musée raconte l'histoire des juifs y cachés des Nazi, présente des témoignages des gens touchés par elle.",
    address:"Prinsengracht 263 - 267 museum entrance Westermarkt 20, 1016 DK Amsterdam Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/frank.jpg'))
frank.photos.attach(io: file, filename: 'frank.jpg', content_type: 'image/jpg')
frank.save!

gogh =Poi.new(
    name: "Musée van Gogh",
    category:"Incontournables",
    title: "Musées",
    description: "Le musée Van Gogh, victime de son succès, est ouvert tous les jours pour accueillir des visiteurs du monde entier. Retrouvez la collection la plus importante des oeuvres de l’artiste, ainsi qu’une curation importante de lettres et dessins",
    address:"Museumplein 6, 1071 DJ Amsterdam Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/gogh.jpg'))
gogh.photos.attach(io: file, filename: 'gogh.jpg', content_type: 'image/jpg')
gogh.save!

jordaan =Poi.new(
    name: "Jordaan",
    category:"Incontournables",
    title: "Sites Touristiques ",
    description: "Les petites ruelles et canaux du quartier Jordaan sont emblématiques du charme de la ville—une atmosphère authentique et chaleureuse règne. Vous y trouverez maintes boutiques, cafés et restaurants branchés.",
    address:"Amsterdam Pays-Bas",
    price_range:"Gratuit",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/jordaan.jpg'))
jordaan.photos.attach(io: file, filename: 'jordaan.jpg', content_type: 'image/jpg')
jordaan.save!

lookout =Poi.new(
    name: "Lookout",
    category:"Incontournables",
    title: "Sites Touristiques ",
    description: "Un ascenseur (avec son et lumière) vous propulse au 20e étage pour profiter d’une panorama de 360°, la meilleure vue de la ville. Pour les accros à l’adrénaline, osez osciller sur la balançoire qui dandine du toit, à plus de 100m du sol.",
    address:"Overhoeksplein 5, 1031 KS Amsterdam Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/lookout.jpg'))
lookout.photos.attach(io: file, filename: 'lookout.jpg', content_type: 'image/jpg')
lookout.save!


rembrandt =Poi.new(
    name: "Musée de la maison de Rembrandt",
    category:"Incontournables",
    title: "Musées",
    description: "Le peintre Rembrandt a vécu et travaillé dans cette maison, aujourd’hui un hommage à l’artiste, contenant beaucoup de ses oeuvres ainsi que celles de ses contemporains. Assistez à une démonstration des techniques utilisées par Rembrandt",
    address:"Jodenbreestraat 4, 1011 NK Amsterdam Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/rembrandt.jpg'))
rembrandt.photos.attach(io: file, filename: 'rembrandt.jpg', content_type: 'image/jpg')
rembrandt.save!

schans =Poi.new(
    name: "Zaanse Schans",
    category:"Incontournables",
    title: "Musées",
    description: "Dépaysant, reposant, situé au bord de l'eau avec, aux alentours, des petites maisons magnifiques, un musée, des boutiques, des restaurants, une boutique qui débute par la démonstration de la fabrication des sabots en bois.",
    address:"Zaanse Schans, Schansend 1, 1509 AW Zaandam Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/schans.jpg'))
schans.photos.attach(io: file, filename: 'schans.jpg', content_type: 'image/jpg')
schans.save!

royal =Poi.new(
    name: "Palais Royal",
    category:"Incontournables",
    title: "Sites Touristiques ",
    description: "Le Palais se situe sur la Place du Dam, Vous serez impressionnés par la richesse des sculptures, des tableaux, des tissus. Une visite spectaculaire.",
    address:"Jodenbreestraat 4, 1011 NK Amsterdam Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/royal.jpg'))
royal.photos.attach(io: file, filename: 'royal.jpg', content_type: 'image/jpg')
royal.save!

dam =Poi.new(
    name: "Place Dam",
    category:"Incontournables",
    title: "Sites Touristiques ",
    description: "Cette place est immense et toujours remplie de touristes. Les grandes artères partent toutes de la place du Dam ainsi que beaucoup de visites guidées, le palais royal et toutes les grandes attractions se situent sur cette place (accès 10 minutes à pieds depuis la gare centrale).",
    address:"Amsterdam Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/dam.jpg'))
dam.photos.attach(io: file, filename: 'dam.jpg', content_type: 'image/jpg')
dam.save!

beguinage =Poi.new(
    name: "Béguinage",
    category:"Incontournables",
    title: "Sites Touristiques ",
    description: "Il faut rentrer sous un porche, et l'on découvre un immense jardin entouré de petites maisons (et d'une chapelle magnifique) c'est à cet endroit qu officiaient autrefois des femmes dévouées aux faibles et qui prodigaient en ces lieux leur sacerdoce. Le lieux est chargé de bonté et d'une tres grande beauté",
    address:"Gedempte Begijnensloot, 1012 RM Amsterdam Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/beguinage.jpg'))
beguinage.photos.attach(io: file, filename: 'beguinage.jpg', content_type: 'image/jpg')
beguinage.save!

artis =Poi.new(
    name: "ARTIS Amsterdam Royal Zoo",
    category:"Activités",
    title: "Jardins/ Aquariums ",
    description: "Une expérience inattendue au coeur d’une ville, le zoo d’Amsterdam, un des plus anciens d’Europe, propose des balades pleines de diversité et un rapprochement unique avec la nature. Il y a aussi un aquarium et un planétarium.",
    address:"Plantage Kerklaan 38-40, 1018 CZ Amsterdam Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/artis.jpg'))
artis.photos.attach(io: file, filename: 'artis.jpg', content_type: 'image/jpg')
artis.save!

heineken =Poi.new(
    name: "Heineken Experience",
    category:"Activités",
    title: " Brasseries",
    description: "Visite en trois parties : Visite en anglais mais sympa ne serait ce pour voir et visiter /Jeux, activités fun / bières offertes et vue panoramique sur le toit",
    address:"Stadhouderskade 78, 1072 AE Amsterdam Pays-Bas",
    price_range:"€€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/heineken.jpg'))
heineken.photos.attach(io: file, filename: 'heineken.jpg', content_type: 'image/jpg')
heineken.save!

vondelpark =Poi.new(
    name: "Vondelpark",
    category:"Activités",
    title: "Parcs, Terrains de jeux",
    description: "Un parc urbain de 47 hectares, le Vondelpark offre une petite escapade en nature. Allez-y pour une balade, un jogging matinal, ou un tour à vélo. Ou faites un pique-nique tranquille.  ",
    address:"Van Baerlestraat & Vondelpark Museum Quarter, Amsterdam Pays-Bas",
    price_range:"Gratuit",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/vondelpark.jpg'))
vondelpark.photos.attach(io: file, filename: 'vondelpark.jpg', content_type: 'image/jpg')
vondelpark.save!

albert =Poi.new(
    name: "Albert Cuyp Market",
    category:"Activités",
    title: "Shopping",
    description: "Présence de nombreux étals très divers (nourriture traditionnelle, fromages locaux, marijuana, vêtements, articles souvenirs et divers...",
    address:"Albert Cuypstraat, Amsterdam Pays-Bas",
    price_range:"€",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/albert.jpg'))
albert.photos.attach(io: file, filename: 'albert.jpg', content_type: 'image/jpg')
albert.save!

amstel =Poi.new(
    name: "Amstel",
    category:"Activités",
    title: "Parcs",
    description: "C'est très intéressant de découvrir la ville ainsi et de voir de magnifiques maisons, et d'écouter les explications sur la ville, surtout à la grande époque des échanges commerciaux, de la richesse des commerçants.",
    address: "Gedempte Begijnensloot, 1012 RM Amsterdam Pays-Bas",
    price_range:"Gratuit",
    city: amsterdam,
  )
file = File.open(Rails.root.join('db/seeds/images/pois/dam/amstel.jpg'))
amstel.photos.attach(io: file, filename: 'amstel.jpg', content_type: 'image/jpg')
amstel.save!


puts "created reviews Alfama"

alfama_1 =Review.create!(
    rating: 5,
    title: "Ruelles typiques",
    description: "Mon coin préféré de Lisbonne ! Ruelles typiques, étroites, abruptes et colorées ! Prévoir de bonnes baskets !!!",
    poi: alfama,
    user: steph,
  )

alfama_2 =Review.create!(
    rating: 4,
    title: "Un quartier très authentique et charmant.",
    description: "On reste dans le vieux Lisbonne, aux couleurs si riches et au relief si variable... plein de petits lieux et restaurants très typiques à découvrir, ruelles et venelles charmantes.",
    poi: alfama,
    user: marc,
  )

alfama_3 =Review.create!(
    rating: 3,
    title: "Génial ces Ruelles",
    description: "Super séjour dans cette ville de lisbonne. Le quartier de l Alfama est un dédale de jolies Ruelles. Il est rempli de tavernes Portugaise ou l on y mange pour des tarifs raisonnables.",
    poi: alfama,
    user: david,
  )


puts "created reviews belem "

belem_1 =Review.create!(
    rating: 4,
    title: "Belém monuments",
    description: "Belém avec de nombreux monuments à l architecture magnifique visite faite en bus avec commentaires en francais c était superbe on recommande",
    poi: belem,
    user: david,
  )

belem_2 =Review.create!(
    rating: 4,
    title: "Très beau quartier, à ne pas manquer",
    description: "Beaucoup à voir dans ce quartier proche de Lisbonne. Bien que la tour ait été fermée pour les visiteurs, nous avons aimé la voir de l'extérieur et nous promener le long du Tage pour également découvrir les autres sites intéressants (monastère, monument des découvertes, ...)",
    poi: belem,
    user: steph,
  )

belem_3 =Review.create!(
    rating: 3,
    title: "A voir",
    description: "... mais c’est vite vu. Le bâtiment est magnifique, particulièrement par beau temps. A compléter par une balade sur le remblai.",
    poi: belem,
    user: marc,
  )

puts "created reviews Forno"

forno_1 =Review.create!(
    rating: 4,
    title: "Excellent",
    description: "Les pizzas sont délicieuses tout comme les desserts faits maison. Le service est très bien, serveurs très agréables malgré la barrière de la langue. Un des meilleurs restaurant italien, je le recommande à 100%",
    poi: forno,
    user: steph,
  )


forno_2 =Review.create!(
    rating: 5,
    title: "Devrait etre dans tous les guides !",
    description: "On ne pourrait employer que des superlatifs pour qualifier ce restaurant ! De l’accueil, chaleureux (alors que nous n'avions pas réservé, ils nous ont quand même trouvé une petite place) aux pizzas vraiment excellentes en passant par le décor et notamment ce four en mosaïques dorées (d'où le nom) qui trône dans un angle ce qui permet de voir les pizzaïolos à l’œuvre, tout est fait pour nous ravir et faire en sorte que notre soirée soit réussie.",
    poi: forno,
    user: marc,
  )

forno_3 =Review.create!(
    rating: 4,
    title: "Vraiment un endroit à connaître",
    description: "Vraiment un endroit à connaître, accueil surprenante, service sympathique par Bishal, pizza à la hauteur de leur bonne note... IL FAUT Y ALLER ABSOLUMENT SI VOUS PASSER PAR Lisbonne.",
    poi: forno,
    user: steph,
  )


puts "created reviews dam"


moeders_1 =Review.create!(
    rating: 5,
    title: "Je recommande !",
    description: "Vraiment un endroit à connaître, accueil surprenante, service sympathique par Bishal, pizza à la hauteur de leur bonne note... IL FAUT Y ALLER ABSOLUMENT SI VOUS PASSER PAR Lisbonne.",
    poi: moeders,
    user: marc,
  )

moeders_2 =Review.create!(
    rating: 2,
    title: "N'est pas à la hauteur de sa réputation",
    description: "Perso j'ai pris une soupe du jour : poireaux/moutarde (prei/moestard) , trooooooooooop bon!!! Après le brood van Anna : thon et épinard frais, & fromage gratiné, nickel! La part, énorme par contre! Même a 14h....pas besoin de prendre une soupe!!!",
    poi: moeders,
    user: david,
  )

moeders_3 =Review.create!(
    rating: 4,
    title: "Une ambiance chaleureuse",
    description: "Dès l'entrée on se dit youahh! La déco est très atypique, des cadres avec des moeders (maman). On sent que la cuisine est faite maison et surtout avec amour! J'aime la déco kitch! Je recommande!Allez y les yeux fermés!",
    poi: moeders,
    user: steph,
  )


puts "created reviews 2 dam"

jordaan_1 =Review.create!(
    rating: 5,
    title: "Quartier charmant",
    description: "Nous avions aimé chiné dans ce quartiers charmant , petits restaurants petites boutiques tendances petits bars , tout ce qui est petit est souvent charmant ,il faut absolument s y promener , ça parle plein de langues différentes",
    poi: jordaan,
    user: marc,
  )

jordaan_2 =Review.create!(
    rating: 3,
    title: "Rien de plus qu'ailleurs",
    description: "Cet endroit n'a rien de plus que les autres de la ville, si ce n'est qu'il est calme. Ne vous focalisez pas sur cet endroit.",
    poi: jordaan,
    user: david,
  )

jordaan_3 =Review.create!(
    rating: 5,
    title: "Apaisant",
    description: "Quartier où il est très agréable de flaner sans but....beaucoup plus agréable que les rues touristiques de la ville. De très belles ruelles qui feront la joie des adeptes de photographie.",
    poi: jordaan,
    user: gab,
  )


puts "created reviews 3 dam"

rijksmuseum_1 =Review.create!(
    rating: 5,
    title: "A faire en priorité !",
    description: "Beaucoup de monde mais c était vraiment génial , trés instructif , nous reviendrons en famille mais cette fois ci nous prendrons un guide francophone pour vraiment tout comprendre",
    poi: rijksmuseum,
    user: marc,
  )

rijksmuseum_2 =Review.create!(
    rating: 5,
    title: "Immanquable !",
    description: "Il y a des audio guides mais on (le site) vous conseille de télécharger l'appli (gratuite) du musée qui en contient un. Donc pensez à apporter vos écouteurs. Vous pouvez choisir différents parcours de visite en fonction de vos préférences. L'appli vous dirige vers certaines œuvres et propose des commentaires efficaces. ",
    poi: rijksmuseum,
    user: gab,
  )

rijksmuseum_3 =Review.create!(
    rating: 4,
    title: "La ronde de nuit masquée",
    description: "Hélas la toile de Rembrandt était masquée par des techniciens sur élévateur... Les indications des toiles sont succinctes mais en anglais et néerlandais.",
    poi: rijksmuseum,
    user: steph,
  )

puts "created favorite cities / pois"

cities = FavoriteCity.create!(
  user: gab,
  city: amsterdam,
  )

pois = FavoritePoi.create!(
  user: gab,
  poi: rijksmuseum,
  )

pois_1 = FavoritePoi.create!(
  user: gab,
  poi: moeders,
  )

pois_2 = FavoritePoi.create!(
  user: gab,
  poi: jordaan,
  )

puts "finish"


