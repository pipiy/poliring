class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      ContactMailer.new_contact(@contact).deliver

      redirect_to root_path, notice: I18n.t('contact.create.success')
    else
      redirect_to new_contact_path, flash: { error: I18n.t('contact.create.error') }
    end
  end
end
