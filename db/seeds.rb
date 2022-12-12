require 'faker'

Category.delete_all
Book.delete_all
BookPage.delete_all

#9.times do	
#	Category.create(genre: Faker::Book.genre)
#end
#9.times do	
#	Book.create(name: Faker::Book.title, description: Faker::Lorem.paragraph, author:Faker::Book.author, year: Faker::Number.binary(digits: 4), category_id: Category.all.sample)
#end
Category.create(genre: "Contes")
Category.create(genre: "Romans et nouvelles")
Category.create(genre: "Théâtre")

book1 = Book.create(name: "conte et nouvelles", 
            description: "Contes et nouvelles en vers est un recueil de divers contes et nouvelles grivois, recueillis et versifiés par Jean de La Fontaine et publiés en trois parties par Claude Barbin, en 1665, 1666 et 1671." ,
            author: "jean de la fontaine", 
            year: 1665, 
            url_IMG: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Wegener_Conte_La_Fontaine_I_frontispice.jpg/375px-Wegener_Conte_La_Fontaine_I_frontispice.jpg", 
            category_id: 19,
            current_page: 0)
book2 = Book.create(name: "La Fille aux yeux d’or", 
              description: "Contes et nouvelles en vers est un recueil de divers contes et nouvelles grivois, recueillis et versifiés par Jean de La Fontaine et publiés en trois parties par Claude Barbin, en 1665, 1666 et 1671." ,
              author: "Honoré de Balzac", 
              year: 1835, 
              url_IMG: "https://static.fnac-static.com/multimedia/Images/FR/NR/fd/dc/6c/7134461/1540-1/tsp20221009062124/La-Fille-aux-yeux-d-or.jpg", 
              category_id: 19,
              current_page: 0)
BookPage.create(book_id: book1.id,
  pageOne: 
    "J’avais résolu de ne consentir à l’impression de ces contes,
    qu’après que j’y pourrais joindre ceux de Boccace, qui sont le
    plus à mon goût ; mais quelques personnes m’ont conseillé de
    donner dès à présent ; ce qui me reste de ces bagatelles ; afin de
    ne pas laisser refroidir la curiosité de les voir qui est encore en
    son premier feu. Je me suis rendu à cet avis sans beaucoup de
    peine ; et j’ai cru pouvoir profiter de l’occasion. Non seulement
    cela m’est permis mais ce serait vanité à moi de mépriser un tel
    avantage. Il me suffit de ne pas vouloir qu’on impose en ma faveur à qui que ce soit ; et de suivre un chemin contraire à celui
    de certaines gens qui ne s’acquièrent des amis que pour
    s’acquérir des suffrages par leur moyen ; créatures de la cabale,
    bien différents de cet Espagnol qui se piquait d’être fils de ses
    propres œuvres. Quoique j’aie autant de besoin de ces artifices
    que pas un autre, je ne saurais me résoudre à les employer : seulement, je m’accommoderai, s’il m’est possible, au goût de mon
    siècle, instruit que je suis par ma propre expérience, qu’il n’y a
    rien de plus nécessaire. En effet on ne peut pas dire que toutes
    saisons soient favorables pour toutes sortes de livres. Nous
    avons vu les Rondeaux, les Métamorphoses, les Bouts-rimés
    régner tour à tour : maintenant ces galanteries sont hors de
    mode, et personne ne s’en soucie : tant il est certain que ce qui
    plaît en un temps peut ne pas plaire en un autre.
    Il n’appartient qu’aux ouvrages vraiment solides, et d’une
    souveraine beauté, d’être bien reçus de tous les esprits, et dans
    tous les siècles, sans avoir d’autre passeport que le seul mérite
    dont ils sont pleins. Comme les miens sont fort éloignes d’un si
    haut degré de perfection, la prudence veut que je les garde en
    mon cabinet, à moins que de bien prendre mon temps pour les",
  pageTwo: 
    "en tirer. C’est ce que j’ai fait, ou que j’ai cru faire dans cette seconde édition, ou je n’ai ajouté de nouveaux contes, que parce
    qu’il m’a semblé qu’on était en train d’y prendre plaisir. Il y en a
    que j’ai étendus, et d’autres que j’ai accourcis ; seulement pour
    diversifier, et me rendre moins ennuyeux. On en trouvera même
    quelques- uns que j’ai prétendu mettre en épigrammes. Tout
    cela n’a fait qu’un petit recueil, aussi peu considérable par sa
    grosseur, que par la qualité des ouvrages qui le composent. Pour
    le grossir j’ai tiré de mes papiers je ne sais quelle Imitation des
    Arrêts d’amour, avec un fragment où l’on me raconte le tour que
    Vulcan fit à Mars et à Vénus, et celui que Mars et Vénus lui
    avaient fait. Il est vrai que ces deux pièces n’ont ni le sujet ni le
    caractère du tout semblables au reste du livre mais à mon sens
    elles n’en sont pas entièrement éloignées. Quoi que c’en soit,
    elles passeront : je ne sais même si la variété n’était point plus à
    rechercher en cette rencontre qu’un assortissement si exact.
    Mais je m’amuse à des choses auxquelles on ne prendra
    peut-être pas garde, tandis que j’ai lieu d’appréhender des objections bien plus importantes. On m’en peut faire deux principales : l’une que ce livre est licencieux ; l’autre qu’il n’épargne
    pas assez le beau sexe ! Quant à la première, je dis hardiment
    que la nature du conte le voulait ainsi ; étant une loi indispensable selon Horace, ou plutôt selon la raison et le sens commun,
    de se conformer aux choses dont on écrit. Or qu’il ne m’ait pas
    été permis d’écrire de celles-ci, comme tant d’autres l’ont fait, et
    avec succès, je ne crois pas qu’on le mette en doute : et l’on ne
    me saurait condamner que l’on ne condamne aussi l’Arioste devant moi, et les anciens devant l’Arioste. On me dira que j’eusse
    mieux fait de supprimer quelques circonstances, ou tout au
    moins de les déguiser. Il n’y avait rien de plus facile ; mais cela
    aurait affaibli le conte, et lui aurait ôté de sa grâce. Tant de circonspection n’est nécessaire que dans les ouvrages qui promettent beaucoup de retenue dès l’abord, ou par leur sujet, ou par
    la manière dont on les traite. Je confesse qu’il faut garder en
    cela des bornes, et que les plus étroites sont les meilleures : aus-", 
  pageThree:
    "si faut-il m’avouer que trop de scrupule gâterait tout. Qui voudrait réduire Boccace à la même pudeur que Virgile, ne ferait
      assurément rien qui vaille, et pécherait contre les lois de la
      bienséance en prenant à tache de les observer. Car afin que l’on
      ne s’y trompe pas, en matière de vers et de prose, l’extrême pudeur et la bienséance sont deux choses bien différentes. Cicéron
      fait consister la dernière à dire ce qu’il est à propos qu’on die, eu
      égard au lieu, au temps, et aux personnes qu’on entretient. Ce
      principe une fois posé ce n’est pas une faute de jugement que
      d’entretenir les gens d’aujourd’hui de contes un peu libres. Je ne
      pèche pas non plus en cela contre la morale. S’il y a quelque
      chose dans nos écrits qui puisse faire impression sur les âmes,
      ce n’est nullement la gaieté de ces contes ; elle passe légèrement : je craindrais plutôt une douce mélancolie, ou les romans
      les plus chastes et les plus modestes sont très capables de nous
      plonger, et qui est une grande préparation pour l’amour. Quant
      à la seconde objection, par laquelle on me reproche que ce livre
      fait tort aux femmes ; on aurait raison si je parlais sérieusement ; mais qui ne voit que ceci est jeu, et par conséquent ne
      peut porter coup ? il ne faut pas avoir peur que les mariages en
      soient à l’avenir moins fréquents, et les maris plus fort sur leurs
      gardes. On me peut encore objecter que ces contes ne sont pas
      fondés, ou qu’ils ont partout un fondement aisé à détruire, enfin
      qu’il y a des absurdités, et pas la moindre teinture de vraisemblance. Je réponds en peu de mots que j’ai mes garants : et puis
      ce n’est ni le vrai ni le vraisemblable qui font la beauté et la
      grâce de ces choses-ci ; c’est seulement la manière de les conter.
      Voilà les principaux points sur quoi j’ai cru être obligé de
      me défendre. J’abandonne le reste aux censeurs : aussi bien serait-ce une entreprise infinie que de prétendre répondre à tout.
      Jamais la critique ne demeure court, ni ne manque de sujets de
      s’exercer : quand ceux que je puis prévoir lui seraient ôtés, elle
      en aurait bientôt trouvé d’autres.",
  pageFour:
      "Jadis régnait en Lombardie
      Un prince aussi beau que le jour,
      Et tel, que des beautés qui régnaient a sa cour
      La moitié lui portait envie,
      L’autre moitié brûlait pour lui d’amour.
      Un jour en se mirant : Je fais, dit-il, gageure
      Qu’il n’est mortel dans la nature
      Qui me soit égal en appas
      Et gage, si l’on veut, la meilleure province
      De mes états ;
      Et s’il s’en rencontre un, je promets foi de prince
      De le traiter si bien, qu’il ne s’en plaindra pas.
      À ce propos s’avance un certain gentilhomme
      D’auprès de Rome.
      « Sire, dit-il, si Votre Majesté
      Est curieuse de beauté,
      Qu’elle fasse venir mon frère ;
      Aux plus charmants il n’en doit guerre :
      Je m’y connais un peu ; soit dit sans vanité.
      Toutefois en cela pouvant m’être flatté,
      Que je n’en sois pas cru, mais les cœurs de vos dames :
      Du soin de guérir leurs flammes
      Il vous soulagera, si vous le trouvez bon :
      Car de pourvoir vous seul au tourment de chacune,
      Outre que tant d’amour vous serait importune,
      Vous n’auriez jamais fait, il vous faut un second.
      Là-dessus Astolphe répond
      (C’est ainsi qu’on nommait ce roi de Lombardie) :
      Votre discours me donne une terrible envie",
  pageFive:
      "De connaître ce frère : amenez-le-nous donc.
      Voyons si nos beautés en seront amoureuses,
      Si ses appas le mettront en crédit :
      Nous en croirons les connaisseuses,
      Comme très bien vous avez dit. »
      Le gentilhomme part, et va quérir Joconde.
      (C’est le nom que ce frère avait).
      À la campagne il vivait,
      Loin du commerce et du monde.
      Marié depuis peu : content, je n’en sais rien.
      Sa femme avait de la jeunesse,
      De la beauté, de la délicatesse ;
      Il ne tenait qu’à lui qu’il ne s’en souvint bien.
      Son frère arrive, et lui fait l’ambassade ;
      Enfin il le persuade.
      Joconde d’une part regardait l’amitié
      D’un roi puissant, et d’ailleurs fort aimable ;
      Et d’autre part aussi, sa charmante moitié
      Triomphait d’être inconsolable,
      Et de lui faire des adieux
      À tirer les larmes des yeux.
      « Quoi tu me quittes, disait-elle,
      As-tu bien l’âme assez cruelle,
      Pour préférer à ma constante amour,
      Les faveurs de la cour ?
      Tu sais qu’à peine elles durent un jour ;
      Qu’on les conserve avec inquiétude,
      Pour les perdre avec désespoir.
      Si tu te lasses de me voir,
      Songe au moins qu’en ta solitude
      Le repos règne jour et nuit :
      Que les ruisseaux n’y font du bruit,
      Qu’afin de t’inviter à fermer la paupière.
      Crois-moi, ne quitte point les hôtes de tes bois,
      Ces fertiles vallons, ces ombrages si cois,
      Enfin moi qui devrais me nommer la première :",
  pageSix:
      "Mais ce n’est plus le temps, tu ris de mon amour
      Va cruel, va montrer ta beauté singulière,
      Je mourrai, je l’espère, avant la fin du jour. »
      L’histoire ne dit point, ni de quelle manière
      Joconde put partir, ni ce qu’il répondit,
      Ni ce qu’il fit, ni ce qu’il dit ;
      Je m’en tais donc aussi de crainte de pis faire.
      Disons que la douleur l’empêcha de parler ;
      C’est un fort bon moyen de se tirer d’affaire.
      Sa femme le voyant tout prêt de s’en aller,
      L’accable de baisers, et pour comble lui donne
      Un bracelet de façon fort mignonne ;
      En lui disant : « Ne le perds pas ;
      Et qu’il soit toujours à ton bras,
      Pour te ressouvenir de mon amour extrême :
      Il est de mes cheveux, je l’ai tissu moi-même ;
      Et voilà de plus mon portrait,
      Que j’attache à ce bracelet. »
      Vous autres bonnes gens eussiez cru que la dame
      Une heure après eut rendu l’âme ;
      Moi qui sais ce que c’est que l’esprit d’une femme,
      Je m’en serais a bon droit défié.
      Joconde partit donc ; mais ayant oublie
      Le bracelet et la peinture,
      Par je ne sais quelle aventure.
      Le matin même il s’en souvient.
      Au grand galop sur ses pas il revient,
      Ne sachant quelle excuse il ferait a sa femme :
      Sans rencontrer personne, et sans être entendu,
      Il monte dans sa chambre, et voit près de la dame
      Un lourdaud de valet sur son sein étendu.
      Tous deux dormaient : dans cet abord, Joconde
      Voulut les envoyer dormir en l’autre monde :
      Mais cependant il n’en fit rien ;")
BookPage.create(book_id: book2.id,
      pageOne: 
          "Un des spectacles où se rencontre le plus
          d’épouvantement est certes l’aspect général de la
          population parisienne, peuple horrible à voir,
          hâve, jaune, tanné. Paris n’est-il pas un vaste
          champ incessamment remué par une tempête
          d’intérêts sous laquelle tourbillonne une moisson
          d’hommes que la mort fauche plus souvent
          qu’ailleurs et qui renaissent toujours aussi serrés,
          dont les visages contournés, tordus, rendent par
          tous les pores l’esprit, les désirs, les poisons dont
          sont engrossés leurs cerveaux ; non pas des
          visages, mais bien des masques : masques de
          faiblesse, masques de force, masques de misère,
          masques de joie, masques d’hypocrisie ; tous
          exténués, tous empreints des signes ineffaçables
          d’une haletante avidité ? Que veulent-ils ? De
          l’or, ou du plaisir ?
          Quelques observations sur l’âme de Paris
          peuvent expliquer les causes de sa physionomie
          cadavéreuse qui n’a que deux âges, ou la jeunesse
          ou la caducité : jeunesse blafarde et sans couleur,",
      pageTwo: 
          "caducité fardée qui veut paraître jeune. En voyant
          ce peuple exhumé, les étrangers qui ne sont pas
          tenus de réfléchir, éprouvent tout d’abord un
          mouvement de dégoût pour cette capitale, vaste
          atelier de jouissances, d’où bientôt eux-mêmes ils
          ne peuvent sortir, et restent à s’y déformer
          volontiers. Peu de mots suffiront pour justifier
          physiologiquement la teinte presque infernale des
          figures parisiennes, car ce n’est pas seulement par
          plaisanterie que Paris a été nommé un enfer.
          Tenez ce mot pour vrai. Là, tout fume, tout brûle,
          tout brille, tout bouillonne, tout flambe,
          s’évapore, s’éteint, se rallume, étincelle, pétille et
          se consume. Jamais vie en aucun pays ne fut plus
          ardente, ni plus cuisante. Cette nature sociale
          toujours en fusion semble se dire après chaque
          œuvre finie : – À une autre ! comme se le dit la
          nature elle-même. Comme la nature, cette nature
          sociale s’occupe d’insectes, de fleurs d’un jour,
          de bagatelles, d’éphémères, et jette aussi feu et
          flamme par son éternel cratère. Peut-être avant
          d’analyser les causes qui font une physionomie
          spéciale à chaque tribu de cette nation intelligente
          et mouvante, doit-on signaler la cause générale", 
      pageThree:
          "qui en décolore, blêmit, bleuit et brunit plus ou
          moins les individus.
          À force de s’intéresser à tout, le Parisien finit
          par ne s’intéresser à rien. Aucun sentiment ne
          dominant sur sa face usée par le frottement, elle
          devient grise comme le plâtre des maisons qui a
          reçu toute espèce de poussière et de fumée. En
          effet, indifférent la veille à ce dont il s’enivrera le
          lendemain, le Parisien vit en enfant quel que soit
          son âge. Il murmure de tout, se console de tout,
          se moque de tout, oublie tout, veut tout, goûte à
          tout, prend tout avec passion, quitte tout avec
          insouciance ; ses rois, ses conquêtes, sa gloire,
          son idole, qu’elle soit de bronze ou de verre ;
          comme il jette ses bas, ses chapeaux et sa fortune.
          À Paris, aucun sentiment ne résiste au jet des
          choses, et leur courant oblige à une lutte qui
          détend les passions : l’amour y est un désir, et la
          haine une velléité ; il n’y a là de vrai parent que
          le billet de mille francs, d’autre ami que le Montde-Piété. Ce laisser-aller général porte ses fruits ;
          et, dans le salon, comme dans la rue, personne
          n’y est de trop, personne n’y est absolument utile,
          ni absolument nuisible : les sots et les fripons,",
      pageFour:
            "comme les gens d’esprit ou de probité. Tout y est
            toléré, le gouvernement et la guillotine, la
            religion et le choléra. Vous convenez toujours à
            ce monde vous n’y manquez jamais. Qui donc
            domine en ce pays sans mœurs, sans croyance,
            sans aucun sentiment ; mais d’où partent et où
            aboutissent tous les sentiments, toutes les
            croyances et toutes les mœurs ? L’or et le plaisir.
            Prenez ces deux mots comme une lumière et
            parcourez cette grande cage de plâtre, cette ruche
            à ruisseaux noirs, et suivez-y les serpenteaux de
            cette pensée qui l’agite, la soulève, la travaille ?
            Voyez. Examinez d’abord le monde qui n’a rien ?
            L’ouvrier, le prolétaire, l’homme qui remue
            ses pieds, ses mains, sa langue, son dos, son seul
            bras, ses cinq doigts pour vivre ; eh ! bien celui-là
            qui, le premier, devrait économiser le principe de
            sa vie, il outrepasse ses forces, attelle sa femme à
            quelque machine, use son enfant et le cloue à un
            rouage. Le fabricant, le je ne sais quel fil
            secondaire dont le branle agite ce peuple qui, de
            ses mains sales, tourne et dore les porcelaines,
            coud les habits et les robes, amincit le fer,
            amenuise le bois, tisse l’acier, solidifie le chanvre",
      pageFive:
            "et le fil, satine les bronzes, festonne le cristal,
            imite les fleurs, brode la laine, dresse les
            chevaux, tresse les harnais et les galons, découpe
            le cuivre, peint les voitures, arrondit les vieux
            ormeaux, vaporise le coton, souffle les tulles,
            corrode le diamant, polit les métaux, transforme
            en feuilles le marbre, lèche les cailloux, toilette la
            pensée, colore, blanchit et noircit tout ; hé ! bien,
            ce sous-chef est venu promettre à ce monde de
            sueur et de volonté, d’étude et de patience, un
            salaire excessif, soit au nom des caprices de la
            ville, soit à la voix du monstre nommé
            Spéculation. Alors ces quadrumanes se sont mis à
            veiller, pâtir, travailler jurer, jeûner, marcher ;
            tous se sont excédés pour gagner cet or qui les
            fascine. Puis, insouciants de l’avenir, avides de
            jouissances, comptant sur leurs bras comme le
            peintre sur sa palette, ils jettent, grands seigneurs
            d’un jour, leur argent le lundi dans les cabarets,
            qui font une enceinte de boue à la ville ; ceinture
            de la plus impudique des Vénus, incessamment
            pliée et dépliée, où se perd comme au jeu la
            fortune périodique de ce peuple, aussi féroce au
            plaisir qu’il est tranquille au travail. Pendant cinq",
      pageSix:
            "jours donc, aucun repos pour cette partie
            agissante de Paris ! Elle se livre à des
            mouvements qui la font se gauchir, se grossir,
            maigrir, pâlir, jaillir en mille jets de volonté
            créatrice. Puis son plaisir, son repos est une
            lassante débauche, brune de peau, noire de tapes,
            blême d’ivresse, ou jaune d’indigestion qui ne
            dure que deux jours, mais qui vole le pain de
            l’avenir, la soupe de la semaine, les robes de la
            femme, les langes de l’enfant tous en haillons.
            Ces hommes, nés sans doute pour être beaux, car
            toute créature a sa beauté relative, se sont
            enrégimentés, dès l’enfance, sous le
            commandement de la force, sous le règne du
            marteau, des cisailles, de la filature, et se sont
            promptement vulcanisées. Vulcain, avec sa
            laideur et sa force, n’est-il pas l’emblème de cette
            laide et forte nation, sublime d’intelligence
            mécanique, patiente à ses heures, terrible un jour
            par siècle, inflammable comme la poudre, et
            préparée à l’incendie révolutionnaire par l’eaude-vie, enfin assez spirituelle pour prendre feu
            sur un mot captieux qui signifie toujours pour
            elle : or et plaisir ! En comprenant tous ceux qui
            ")
    
