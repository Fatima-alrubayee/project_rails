class Patient < ActiveRecord::Base
  belongs_to :doctor
  
   validates_presence_of :first_name, :last_name
   validates_uniqueness_of :first_name, :last_name, :doctor_id,  case_sensitive: false
 
end
