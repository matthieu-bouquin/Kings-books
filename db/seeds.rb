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

b = Book.create(name: "conte et nouvelles", 
            description: "Contes et nouvelles en vers est un recueil de divers contes et nouvelles grivois, recueillis et versifiés par Jean de La Fontaine et publiés en trois parties par Claude Barbin, en 1665, 1666 et 1671." ,
            author: "jean de la fontaine", 
            year: 1665, 
            url_IMG: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Wegener_Conte_La_Fontaine_I_frontispice.jpg/375px-Wegener_Conte_La_Fontaine_I_frontispice.jpg", 
            category_id: 19,
            current_page: 0)
BookPage.create(book_id: b.id,
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
    
