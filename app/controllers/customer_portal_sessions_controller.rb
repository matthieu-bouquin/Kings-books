class CustomerPortalSessionsController < ApplicationController
    resources :customer_portal_sessions, only: [:create] 
    def create
        portal_session = Stripe::BillingPortal::Session.create(
          customer: current_user.stripe_customer_id,
          return_url: "https://l'adresse-de-votre-choix/"
        )
        redirect_to portal_session.url
      end
end
