class ContactsController < ApplicationController
  def index
    @contact = Contact.new
    p params
  end
  def new
    p "NEW"
    p params
  end
  def create
    p "CREATE"
    p params
    @contact = Contact.create(paramsClean)
    if @contact.save
      redirect_back fallback_location: root_path,
                          success: "Your message has been sent successfully"
    end
  end
  def update
    p params
  end
  private
  def paramsClean
    params.require(:contact).permit(:email, :name, :subject, :content)
  end
end
