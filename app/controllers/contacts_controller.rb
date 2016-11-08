class ContactsController < ApplicationController
  def contacts_method
    @contact = Contact.first
    render 'contact.html.erb'
  end
end
