class ContractsMailer < ApplicationMailer
  default template_path: '/mailer/contracts_mailer'

  def service_booking_notification
    @data = params
    mail(subject: "Service Booking")
  end
end