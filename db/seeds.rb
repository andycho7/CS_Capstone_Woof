# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

all_breeds = ["Affenpinscher",
              "Afghan Hound",
              "Ainu Dog",
              "Airedale Terrier",
              "Akita",
              "Alaskan Malamute",
              "American Bulldog",
              "American Cocker Spaniel",
              "American Eskimo Dog",
              "American Foxhound",
              "American Staffordshire Terrier",
              "American Water Spaniel",
              "Anatolian Shepherd Dog",
              "Anglo-French Hound",
              "Appenzell Mountain Dog",
              "Ariegeois",
              "Armant",
              "Artois Hound",
              "Atlas Dog ",
              "Atlas Terrier",
              "Australian Cattle Dog",
              "Australian Kelpie",
              "Australian Shepherd",
              "Australian Silky-Haired Terrier",
              "Austrian Hound",
              "Austrian Short-Haired Pinscher",
              "Auvergne Pointer",
              "Balkan Hound",
              "Banjara Greyhound",
              "Basenji",
              "Basset Griffon Vendeen",
              "Basset Hound",
              "Bassett Artesian Normand",
              "Bavarian Mountain Dog",
              "Beagle",
              "Beagle Harrier",
              "Bearded Collie",
              "Beauce Shepherd",
              "Bedlington Terrier",
              "Belgian Malinois",
              "Belgian Sheepdog",
              "Belgian Tervuren",
              "Bergamasco",
              "Berger de Bresse",
              "Berger de Savoie",
              "Berger du Languedoc",
              "Bernese Hound",
              "Bernese Mountain Dog",
              "Bichon Frise",
              "Billy",
              "Black and Tan Coonhound",
              "Black Forest Hound",
              "Bloodhound",
              "Blue Lacy",
              "Bluetick Coonhound",
              "Bolognese",
              "Border Collie",
              "Border Terrier",
              "Borzoi",
              "Bosnian Rough-Haired Hound",
              "Boston Terrier",
              "Bouvier des Flanders",
              "Boxer",
              "Boykin Spaniel",
              "Braque du Bourbonnais Setter",
              "Brazilian Mastiff",
              "Brazilian Terrier",
              "Briard",
              "Briquet Griffon Vendeen",
              "Brittany",
              "Broholmer",
              "Bruno Jura Hound",
              "Brussels Griffon",
              "Bull Terrier",
              "Bulldog",
              "Bullmastiff",
              "Cairn Terrier",
              "Canaan Dog",
              "Cane Corso",
              "Cardigan Welsh Corgi",
              "Carolina Dog",
              "Catahoula Leopard",
              "Catalonian Shepherd",
              "Cavalier King Charles Spaniel",
              "Cesky Terrier",
              "Charplaninatz",
              "Chesapeake Bay Retriever",
              "Chihuahua",
              "Chinese Crested Dog",
              "Chinook",
              "Chow Chow",
              "Clumber Spaniel",
              "Cockapoo",
              "Cocker Spaniel",
              "Collie",
              "Coton de Tulear",
              "Curly-Coated Retriever",
              "Dachsbracke",
              "Dachshund",
              "Dalmatian",
              "Dandie Dinmont",
              "Deerhound",
              "Deutsche Wachtelhund",
              "Dingo",
              "Doberman",
              "Dogo Argentino",
              "Dogue De Bordeaux",
              "Drentsche Patrijshond",
              "Drever",
              "Dunker",
              "Dupuy Setter",
              "Dutch Shepherd",
              "Dutch Waterfowl Dog",
              "East Siberian Laika",
              "Elkhound",
              "English Bulldog",
              "English Cocker Spaniel",
              "English Coonhound",
              "English Foxhound",
              "English Setter",
              "English Shepherd",
              "English Springer Spaniel",
              "English Toy Spaniel",
              "English Toy Terrier",
              "Entlebuch Mountain Dog",
              "Eskimo Dog",
              "Estonian Hound",
              "Estrela Mountain Dog",
              "Eurasier",
              "Feist",
              "Field Spaniel",
              "Fila",
              "Finnish Hound",
              "Finnish Spitz",
              "Flat-Coated Retriever",
              "Fox Terrier",
              "French Bulldog",
              "French Hounds",
              "French Setter",
              "French Spaniel",
              "Gascons-saintongeois",
              "German Pointer",
              "German Hunt Terrier",
              "German Shepherd",
              "German Shorthaired Pointer",
              "German Spaniel",
              "German Spitz",
              "German Spitz",
              "German Wirehaired Pointer",
              "Giant Schnauzer",
              "Glen of Imaal Terrier",
              "Golden Cocker Retriever",
              "Golden Retriever",
              "Gordon Setter",
              "Grand Bleu de Gascogne",
              "Grand Basset Griffon Vendeen",
              "Grand Gascons-Saintongeois",
              "Grand Griffon Vendeen",
              "Great Dane",
              "Great Pyrenees",
              "Greater Swiss Mountain Dog",
              "Greek Harehound",
              "Greenland Dog",
              "Greyhound",
              "Griffon Nivernais",
              "Haldenstovare",
              "Hamiltonstovare",
              "Hanoverian Hound",
              "Harlequin Pinscher",
              "Harrier",
              "Havanese",
              "Hovawart",
              "Hungarian Greyhound",
              "Hungarian Shorthaired Vizsla",
              "Hungarian Wirehaired Vizsla",
              "Hygenhund",
              "Ibizan Hound",
              "Icelandic Sheepdog",
              "Irish Setter",
              "Irish Terrier",
              "Irish Water Spaniel",
              "Irish Wolfhound",
              "Istrian Hound",
              "Italian Greyhound",
              "Italian Segugio",
              "Italian Setter",
              "Italian Spinone",
              "Italian Spitz",
              "Jack Russell Terrier",
              "Jamthund",
              "Japanese Chin",
              "Japanese Fighting Dog",
              "Japanese Kai Ken",
              "Japanese Kishu",
              "Japanese Spitz",
              "Japanese Terrier",
              "Jindo",
              "Kangaroo Hound",
              "Karelian Bear Dog",
              "Karst Shepherd",
              "Keeshond",
              "Kerry Blue Terrier",
              "King Charles Spaniel",
              "King Shepherd",
              "Komondor",
              "Kooikerhondje",
              "Kromfohrlander",
              "Kuvasz",
              "Labradoodle",
              "Labrador Retriever",
              "Lakeland Terrier",
              "Lancashire Heeler",
              "Lapland Spitz",
              "Lapponian Herder",
              "Large Munsterlander",
              "Leonberger",
              "Levesque",
              "Lhasa Apso",
              "Llewellin Setter",
              "Lowchen",
              "Lucernese Hound",
              "Lundehund",
              "Lurcher",
              "Majestic Tree Hound",
              "Mallorquin Bulldog",
              "Maltese",
              "Manchester Terrier",
              "Maremma Sheepdog",
              "Mastiff",
              "Mexican Hairless",
              "Mi-Ki",
              "Miniature Bull Terrier",
              "Miniature Dachshund",
              "Miniature Pinscher",
              "Miniature Poodle",
              "Miniature Schnauzer",
              "Mixed Dog",
              "Mountain Cur",
              "Mudi",
              "Neapolitan Mastiff",
              "New Guinea Singing Dog",
              "Newfoundland",
              "Norfolk Terrier",
              "Norwegian Buhund",
              "Norwegian Elkhound",
              "Norwich Terrier",
              "Nova Scotia Duck-Tolling Retriever",
              "Old Danish Pointer",
              "Old English Bulldogge",
              "Old English Sheepdog",
              "Otter Hound",
              "Papillon",
              "Peekapoo",
              "Pekingese",
              "Pembroke Welsh Corgi",
              "Peruvian Inca Orchid",
              "Peruvian Inca Orchid",
              "Petit Basset Griffon Vendeen",
              "Pharaoh Hound",
              "Picardy Shepherd",
              "Pinscher",
              "Pit Bull",
              "Plott Hound",
              "Pointer",
              "Poitevin",
              "Polish Lowland Sheepdog",
              "Pomeranian",
              "Pont-audemer Spaniel",
              "Poodle",
              "Porcelaine",
              "Portuguese Podengo Grande",
              "Portuguese Podengo Medio",
              "Portuguese Podengo Pequeno",
              "Portuguese Setter",
              "Portuguese Water Dog",
              "Posavatz Hound",
              "Presa Canario",
              "Pudlepointer",
              "Pug",
              "Puli",
              "Pumi",
              "Pyrenean Mastiff",
              "Pyrenean Shepherds",
              "Rat Terrier",
              "Redbone Coonhound",
              "Rhodesian Ridgeback",
              "Rottweiler",
              "Rough Collie",
              "Rumanian Shepherd Dog",
              "Russian Hounds",
              "Russian Sheepdogs",
              "Saint -German Setter",
              "Saint Bernard",
              "Saluki",
              "Samoyed",
              "Schapendoes",
              "Schiller Hound",
              "Schipperke",
              "Schnauzer",
              "Scottish Deerhound",
              "Scottish Terrier",
              "Sealyham Terrier",
              "Shar-pei",
              "Shar-pei Mix",
              "Sheltie",
              "Shepherd Mix",
              "Shiba-Inu",
              "Shih Tzu",
              "Shiloh Shepherd",
              "Siberian Husky",
              "Sicilian Hound",
              "Silky Terrier",
              "Skye Terrier",
              "Sloughi",
              "Slovakian Kuvasz",
              "Smaland Hound",
              "Small Blue Gascony Griffon",
              "Small Munsterlanders",
              "Small-sized French Setter",
              "Spanish Greyhound",
              "Spanish Hounds",
              "Spanish Mastiff",
              "Spanish Pointer",
              "Springer Spaniel",
              "St. Hubert Jura Hound",
              "Stabyhoun",
              "Staffordshire Bull Terrier",
              "Steinbracke",
              "Stephens Stock",
              "Sussex Spaniel",
              "Swedish Vallhund",
              "Tahltan Bear Dog",
              "Tawny Brittany Bassett",
              "Tawny Brittany Griffon",
              "Teacup Poodle",
              "Teacup Yorkie",
              "Telomian",
              "Thai Ridgeback",
              "Tibetan Mastiff",
              "Tibetan Spaniel",
              "Tibetan Terrier",
              "Toy Fox Terrier",
              "Toy Poodle",
              "Toy Poodle",
              "Transylvanian Hound",
              "Treeing Tennessee Brindle",
              "Tyrolean Hound",
              "Vizsla",
              "Walker Hound ",
              "Weimaraner",
              "Welsh Corgi - Cardigan",
              "Welsh Corgi - Pembroke",
              "Welsh Springer Spaniel",
              "Welsh Terrier",
              "West Highland Terrier",
              "West Siberian Laika",
              "Wetterhound",
              "Wheaten Terrier",
              "Whippet",
              "Wire Fox Terrier",
              "Wirehaired Pointing Griffin",
              "Xolo Miniature",
              "Xolo Standard",
              "Xolo Toy",
              "Yorkshire Terrier",
              "Yugoslavian Mountain Dog"]

all_breeds.each do |breed|
  Breed.create!(name: breed)
end

weight_ranges = [[0,10],
                 [11,20],
                 [21,30],
                 [31,40],
                 [41,50],
                 [51,60],
                 [61,70],
                 [71,80],
                 [81,90],
                 [91,100],
                 [101,nil]]

weight_ranges.each do |range|
  Weight.create!(start_weight: range.first, end_weight: range.last)
end

colors = ["brown","red","gold","yellow","cream","black","blue","white"]
colors.each do |color|
  Color.create!(name: color)
end

# Create some sample users
# You can do create like above which creates new object and commits to the db
=begin
diego = User.new 
diego.first_name = "Diego"
diego.last_name = "Pardo"
diego.email = "me@diegopardo.com"
diego.password = "1234"
diego.save

alejandra = User.new
alejandra.first_name = "Alejandra"
alejandra.last_name = "Pardo"
alejandra.email = "maria@diegopardo.com"
alejandra.password = "1234"
alejandra.save

andy = User.new
andy.first_name = "Andy"
andy.last_name = "Cho"
andy.email = "andy@cho.com"
andy.password = "1234"
andy.save
=end

attributes = {
         first_name: "Diego",
         last_name: "Pardo",
         email: "me@diegopardo.com",
         password: "hello1234",
         password_confirmation: "hello1234",
         confirmed_at: Time.now.utc,
         confirmation_sent_at: Time.now.utc,
         image: File.open(File.join(Rails.root,'app/assets/images/seeds/diego.jpg'))
        }
diego = User.new attributes
diego.skip_confirmation_notification!
diego.save!

attributes = {
         first_name: "Alejandra",
         last_name: "Pardo",
         email: "maria@diegopardo.com",
         password: "hello1234",
         password_confirmation: "hello1234",
         confirmed_at: Time.now.utc,
         confirmation_sent_at: Time.now.utc,
         image: File.open(File.join(Rails.root,'app/assets/images/seeds/alejandra.jpg'))
        }
alejandra = User.new attributes
alejandra.skip_confirmation_notification!
alejandra.save!

attributes = {
         first_name: "Andy",
         last_name: "Cho",
         email: "andy@cho.com",
         password: "hello1234",
         password_confirmation: "hello1234",
         confirmed_at: Time.now.utc,
         confirmation_sent_at: Time.now.utc,
         image: File.open(File.join(Rails.root,'app/assets/images/seeds/andy.jpg'))
        }
andy = User.new attributes
andy.skip_confirmation_notification!
andy.save!

attributes = {
         first_name: "Paarth",
         last_name: "Lakhani",
         email: "paarth@utah.com",
         password: "hello1234",
         password_confirmation: "hello1234",
         confirmed_at: Time.now.utc,
         confirmation_sent_at: Time.now.utc,
         image: File.open(File.join(Rails.root,'app/assets/images/seeds/paarth.jpg'))
        }
paarth = User.new attributes
paarth.skip_confirmation_notification!
paarth.save!

attributes = {
         first_name: "Andrew",
         last_name: "Emrazian",
         email: "andrew@utah.com",
         password: "hello1234",
         password_confirmation: "hello1234",
         confirmed_at: Time.now.utc,
         confirmation_sent_at: Time.now.utc,
         image: File.open(File.join(Rails.root,'app/assets/images/seeds/andrew.jpg'))
        }
andrew = User.new attributes
andrew.skip_confirmation_notification!
andrew.save!


# Create some groups
pardos = Group.new
pardos.name = "Pardos"
pardos.owner = diego
pardos.users = [diego, alejandra]
pardos.save!

# Other way
monkeys = Group.create!(name: "Code Monkeys", owner: andrew, users: [andrew, andy, paarth, diego])

# Create some pets
coco = Pet.new
coco.name = "Coco"
coco.chip_number = "3534656543"
coco.group = pardos
coco.breed = Breed.where(name: "Miniature Schnauzer").first
coco.weight = Weight.where(start_weight: 0, end_weight: 10).first
coco.colors = Color.where(name: "white")
coco.image = File.open(File.join(Rails.root,'app/assets/images/seeds/coco.png'))
coco.save!

luna = Pet.new
luna.name = "Luna"
luna.chip_number = "3534656543"
luna.group = pardos
luna.breed = Breed.where(name: "Chihuahua").first
luna.weight = Weight.where(start_weight: 0, end_weight: 10).first
luna.colors = Color.where(name: "black")
luna.save!

sadie = Pet.new
sadie.name = "Sadie"
sadie.chip_number = "23452345DSF"
sadie.group = monkeys
sadie.breed = Breed.where(name: "Pit Bull").first
sadie.weight = Weight.where(start_weight: 61, end_weight: 70).first
sadie.colors = Color.where(name: ["black","white"]) # She's black and white
sadie.image = File.open(File.join(Rails.root,'app/assets/images/seeds/sadie.jpg'))
sadie.save!

@users = User.all
@pets = Pet.all

''' 
CodeMonkeys = Diego, Andy, Paarth, Andrew
Sadie

Pardos = Diego Alejandra
Coco Luna

user 0 Diego 
CodeMonkeys / Sadie(2)
Pardos / Coco(0) Luna(1)

user 1 Alejandra
Pardos/ Coco(0) Luna(1)

user 2 Andy
CodeMonkeys / Sadie(2)

user 3 Paarth
CodeMonkeys / Sadie(2)

user 4 Andrew
CodeMonkeys / Sadie(2)

Pet 0 Coco
Pet 1 Luna
Pet 2 Sadie

'''


# seeds according to new models
ld1 = LostDog.new(description: "I have lost my puppy. Coco is white in color and she's small. Take care of her", latitude: 40.726 , longitude:  -111.842, user: @users[0], is_around_me: true, pet: @pets[0], address: "1700 Redondo Ave S, Salt Lake City, UT 84108") # Done
ld1.save!

ld2 = LostDog.new(description: "My puppy was lost in a park. Call me at: 123-123-1234", latitude: 40.757, longitude: -111.877, user: @users[2], is_around_me: true, pet: @pets[2], address: "541 Denver St E Salt Lake City, UT 84111")
ld2.save!

ld3 = LostDog.new(description: "My dog just jumped from the car window. She is big, black, and tall", latitude: 40.771, longitude: -111.844, user: @users[4], is_around_me: true, pet: @pets[2], address: "72 Central Campus Dr, Salt Lake City, UT 84112") # Done
ld3.save!

ld4 = LostDog.new(description: "I had gone to the grocery store and my pet escaped", latitude: 40.726, longitude: -111.856541, user: @users[2], is_around_me: true, pet: @pets[2], address: "2057 S 1200 E, Salt Lake City, UT 84105") #Done
ld4.save!

ld5 = LostDog.new(description: "I had gone for jogging and my dog got angry on me and hence, it ran away from me", latitude: 40.762, longitude:  -111.846, user: @users[0], is_around_me: true, pet: @pets[1], address: "Marriott Library, South Campus Drive, Salt Lake City, UT") #Done
ld5.save!

fd1 = FoundDog.new(description: "I have a dog. She's small and white in color. She was in a park shivering and there's a red badge around her neck.", latitude: 40.768,longitude:  -111.859, user: @users[3], breed_id: 1, weight_id: 1, is_around_me: true, address: "25 S 1100 E Apt No 7, Salt Lake City UT. 84102.") #Done
fd1.save!

fd2 = FoundDog.new(description: "A dog has been found just near my house bonet. Your pet is safe with me. Call me at 
(291)231-2393", latitude: 40.763710,longitude: -111.867, user: @users[1], breed_id: 1, weight_id: 1, is_around_me: true, 
address: "261 S 800 E Apt No 1, Salt Lake City, UT. 84102") # Done
fd2.save!

fd3 = FoundDog.new(description: "A hungry pet was found near the pool starving for food", latitude: 40.681, longitude:  -111.883, user: @users[4], breed_id: 1, weight_id: 1, is_around_me: true, address: "4150 300 E, Murray, UT 84107")
fd3.save! #Done

fd4 = FoundDog.new(description: "A Chihuahua with a red sweater was found. Contact me at -(918) 324- 0391", latitude: 40.780, longitude: -111.894, user: @users[2], breed_id: 1, weight_id: 1, is_around_me: true, address: "Salt Lake City International Airport (SLC), North Terminal Drive, Salt Lake City, UT")
fd4.save!

fd5 = FoundDog.new(description: "I am currently looking at a dog that seems to be owned by a person. I have attached a pic with this email. Please contact me if anything is required", latitude: 40.799, longitude: -111.927, user: @users[2], breed_id: 1, weight_id: 1, is_around_me: true, address: "")
fd5.save!



#f = FeedingHistory.create!(amount: 2.5, food_item: "Puppy Chow", user: @users[0], is_around_me: false, pet: @pets[0])

#wp = WalkingPartner.create!(description: "I am looking for a company. Does anyone want to join", latitude: 40.5513, longitude: -112.20, user: @users[0], is_around_me: true, pet: @pets[0])

# # Create an event
# ld = LostDog.create(description: "If you see her call 801-564-1354")
# am = AroundMe.create(around_me_event: ld, latitude: 40.5513, longitude: -112.20)
# e = Event.create(pet_event: am, pet: coco, user: diego)
#
# # Create an event2
# ld = LostDog.create(description: "I keep losing Coco. I can't believe it.")
# am = AroundMe.create(around_me_event: ld, latitude: 41.3149, longitude: -111.59)
# e = Event.create(pet_event: am, pet: coco, user: diego)
#
# # Create an event3
# ld = LostDog.create(description: "She ran into traffic and I could catch her")
# am = AroundMe.create(around_me_event: ld, latitude: 41.4962, longitude: -112.582)
# e = Event.create(pet_event: am, pet: luna, user: alejandra)
#
# # create an event 4
# fd = FoundDog.new(description: "I found a brown/white dog. It's ugly")
# fd.breed = Breed.where('name LIKE ?',"%labrador%").first
# fd.weight = Weight.last # Biggest weight range, over 100 lbs
# fd.colors = Color.where(name: ["brown","white"])
# fd.save
# am2 = AroundMe.create(around_me_event: fd, latitude: 40.463, longitude: -111.632)
# e2 = Event.create(pet_event: am2, user: andrew)