class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      name = contact_params[:contact][:name]
      email = contact_params[:contact][:email]
      body = contact_params[:contact][:comments]
      ContactMailer.contact_email(name, email, body).deliver
      flash[:success] = "Message sent!"
      redirect_to new_contact_path
    else
      flash[:danger] = "Error occured, message has not been sent!"
      redirect_to new_contact_path
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :comments)
  end

end
