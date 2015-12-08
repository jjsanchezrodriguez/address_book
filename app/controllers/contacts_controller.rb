class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.order("name ASC")

  end

  def show
    @proyects = Proyect.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render 'no_proyect_found'
  end

  def new
    @contacts = Contact.new
  end

  def create
      contact = Contact.new(
        :name => params[:contact][:name],
        :address => params[:contact][:address],
        :phone_number => params[:contact][:phone_number],
        :email => params[:contact][:email])

      contact.save

      redirect_to("/contacts")

  end
end
