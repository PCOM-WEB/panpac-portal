class ContractsController < ApplicationController

  def service_booking_form
    @service_booking = service_booking_params

    respond_to do |format|
      format.html
    end
  end

  def service_booking
    @service_booking = service_booking_params
    ContractsMailer.with(service_booking_params).service_booking_notification.deliver_now
    
    respond_to do |format|
      format.js
    end
  end

  private

  def service_booking_params
    params.permit(
      :ST,
      :RentalContract,
      :ContractDate,
      :CustCode,
      :CustName,
      :Department,
      :VehicleNo,
      :RentFrom,
      :RentTo,
      :BillingTerms,
      :Terms,
      :ContactPerson,
      :RentalRate,
      :SalesMan,
      :OutstandingAmount,
      :ServiceDue,
      :NoOfService,
      :ItemBrand,
      :ItemModel,
      :ToServiceDate,
      :ToServiceTime
    )
  end
end
