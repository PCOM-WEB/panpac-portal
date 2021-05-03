class RentalItemsMailer < ApplicationMailer
  default template_path: '/mailer/rental_items_mailer'

  def enquire_notification
    @data = params
    mail(subject: "Enquire Submitted")
  end
end