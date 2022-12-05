require 'faker'

Category.delete_all
Book.delete_all

#9.times do	
#	Category.create(genre: Faker::Book.genre)
#end
#9.times do	
#	Book.create(name: Faker::Book.title, description: Faker::Lorem.paragraph, author:Faker::Book.author, year: Faker::Number.binary(digits: 4), category_id: Category.all.sample)
#end
Category.create(genre: "Contes")
Category.create(genre: "Romans et nouvelles")
Category.create(genre: "Théâtre")

Book.create(name: "conte et nouvelles", description: "Contes et nouvelles en vers est un recueil de divers contes et nouvelles grivois, recueillis et versifiés par Jean de La Fontaine et publiés en trois parties par Claude Barbin, en 1665, 1666 et 1671." ,author: "jean de la fontaine", year: 1665, url_IMG: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Wegener_Conte_La_Fontaine_I_frontispice.jpg/375px-Wegener_Conte_La_Fontaine_I_frontispice.jpg", category_id: 19)
Book.create(name: "la fille au yeux d'or", description: "La Fille aux yeux d'or est un roman d’Honoré de Balzac paru en 1835, troisième volet de l’Histoire des Treize qui regroupe Ferragus, La Duchesse de Langeais et La Fille aux yeux d’or. L’ensemble fait partie des Scènes de la vie parisienne, Études de mœurs, de La Comédie humaine. En 1841, Balzac dédicace le roman à Eugène Delacroix." ,author: "Balzac, Honoré", year: 1898, url_IMG: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/BalzacGirlGoldenEyes.jpg/375px-BalzacGirlGoldenEyes.jpg", category_id: 19)
Book.create(name: "Jean-des-Figues", description: "Rédigé à Sisteron, en 1868, Jean-des-Figues est certainement le chef-d'oeuvre de jeunesse de Paul Arène, dédié à Alphonse Daudet, et où la vie de l'auteur se confond avec celle du héros." ,author: "Arène, Paul", year: 1929, url_IMG: "https://www.babelio.com/couv/CVT_CVT_Jean-des-Figues_6210.jpg", category_id: 19)
Book.create(name: "Le comte de monte-Mristo", description: "Le Comte de Monte-Cristo est un roman d'Alexandre Dumas, écrit avec la collaboration d'Auguste Maquet et dont la publication commence durant l'été 1844." ,author: "Dumas, Alexandre", year: 1846, url_IMG: "https://static.fnac-static.com/multimedia/Images/FR/NR/09/58/27/2578441/1507-1/tsp20221111073400/Le-Comte-de-Monte-Cristo.jpg", category_id: 19)
Book.create(name: "Cyrano de Bergerac", description: "Cyrano de Bergerac est l'une des pièces les plus populaires du théâtre français, et la plus célèbre de son auteur, Edmond Rostand." ,author: "Rostand, Edmond ", year: 1910, url_IMG: "https://static.fnac-static.com/multimedia/Images/FR/NR/54/9d/0d/892244/1507-1/tsp20221201063229/Agregation-2022-Cyrano-de-Bergerac.jpg", category_id: 19)
Book.create(name: "Aventures d'Alice au pays des merveilles", description: "Les Aventures d'Alice au pays des merveilles (titre original : Alice's Adventures in Wonderland), fréquemment abrégé en Alice au pays des merveilles, est un roman publié en 1865 par Lewis Carroll." ,author: "Carroll, Lewis", year: 1910, url_IMG: "https://m.media-amazon.com/images/I/91yLiYO7jtL.jpg", category_id: 19)