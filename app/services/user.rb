class User
  def initialize(user_data)
    @user_data = user_data
  end

  def trans_id
    @user_data['transID']
  end

  def staff_id
    @user_data['StaffID']
  end

  def roc
    @user_data['ROC']
  end

  def department
    @user_data['Department']
  end

  def user_type
    @user_data['UserType']
  end

  def full_name
    @user_data['Name']
  end

  #company data
  def company_name
    @user_data['CompanyName']
  end

  def roc_nos
    @user_data['RocNos']
  end

  def postal_address
    @user_data['AddPostal']
  end

  def address
    @user_data['Address']
  end

  def billing_address
    @user_data['BillAddress']
  end

  def telephone
    @user_data['Telephone']
  end

  def contact_person
    @user_data['ContactPerson']
  end

  def contact_person_email
    @user_data['ContactPersonEmail']
  end

  def salesman
    @user_data['SalesMan']
  end

  def rental_term
    @user_data['RentalTerm']
  end
end