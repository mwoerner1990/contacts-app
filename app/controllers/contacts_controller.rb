class ContactsController < ApplicationController
  
  def index
    #@contacts = Contact.all
    if current_user
      @contacts = current_user.contacts
      render 'index.html.erb'
    else
      redirect_to '/login'
    end
  end

  def new
    render 'new.html.erb'
  end

  def create
    contact = Contact.new(first_name: params[:first_name],
      last_name: params[:last_name],
      middle_name: params[:middle_name],
      email: params[:email],
      phone_number: params[:phone_number],
      user_id: current_user.id
      )
    contact.save
    # render 'create.html.erb'
    redirect_to "/contacts"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    contact = Contact.find_by(id: params[:id])
    contact.last_name = params[:last_name]
    contact.middle_name = params[:middle_name]
    contact.first_name = params[:first_name]
    contact.email = params[:email]
    contact.phone_number = params[:phone_number]
    contact.save
    # render 'update.html.erb'
    flash[:success] = "Contact Successfully Updated!"
    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    # render 'destroy.html.erb'
    redirect_to "/contacts"
  end
end
