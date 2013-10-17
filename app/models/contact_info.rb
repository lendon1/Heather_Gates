class ContactInfo < ActiveRecord::Base
  attr_accessible :contact_description, :contact_type, :email_address, :phone_number
end
