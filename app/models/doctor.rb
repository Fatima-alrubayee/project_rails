class Doctor < ActiveRecord::Base
    has_many :patients
    
   validates_presence_of :license_no
   validates_uniqueness_of :license_no,  case_sensitive: false
end
