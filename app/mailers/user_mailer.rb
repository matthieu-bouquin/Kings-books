class UserMailer < ApplicationMailer
  default from: 'kings.books.mailer@gmail.com'

      def welcome_email(user)
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        @user = user 

        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url  = 'http://monsite.fr/login' 

        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: @user.email, subject: 'Bienvenue chez nous !') 
      end
      def welcome_reset_password_instructions(user)
        mail(to: user.email, subject: 'Welcome to the New Site')
      end
end