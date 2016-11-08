class ContactsController < ApplicationController
  def contacts_method
    @contact = Contact.first
    render 'contact.html.erb'
  end

  def all_contacts_method
    @contacts = Contact.all
    render 'all_contacts.html.erb'
  end
end
