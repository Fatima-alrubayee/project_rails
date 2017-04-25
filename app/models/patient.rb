class Patient < ActiveRecord::Base
  belongs_to :doctor
  
   validates_presence_of :first_name, :last_name
   validates_uniqueness_of :first_name, :last_name, :doctor_id,  case_sensitive: false
   
   validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@gmail\.com\z/, message: "accept only (gmail) accounts" }
   validates_format_of :phone_number, with:  /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
   
   
   def full_patients
       "#{first_name} #{last_name} #{phone_number} #{email}"
    end
 
end
