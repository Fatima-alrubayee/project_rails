class Doctor < ActiveRecord::Base
    has_many :patients
    
   validates_presence_of :license_no
   validates_uniqueness_of :license_no,  case_sensitive: false
   validates_format_of :phone_number, with:  /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
    def doctor_info
        "#{first_name} #{last_name} #{email} #{phone_number}"
    end
end
