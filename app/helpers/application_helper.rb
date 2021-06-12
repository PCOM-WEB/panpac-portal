module ApplicationHelper
  def application_date_format(date)
    date.to_date.strftime("%d-%m-%Y")
  end
end
