class ContactMailer < ActionMailer::Base
  default from: 'sekulic87@gmail.com'  
  def contact_email(email, question)
    rade ="ritecz_marta@yahoo.com"
    mail(to: rade,
         body: question,
         content_type: "text/html",
         subject: "Message from: #{email}")
  end
end
