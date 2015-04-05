class StaticPagesController < ApplicationController
  def contact
  end
  def send_mail
      email = params[:email]
      question = params[:question]
      ContactMailer.contact_email(email, question).deliver
      redirect_to contact_path, notice: 'We will read and respond to your question.'
  end  
end
