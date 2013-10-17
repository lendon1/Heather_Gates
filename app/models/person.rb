class Person < ActiveRecord::Base
  attr_accessible :first_name, :id_number, :id_state, :id_type, :last_name, :other_name, :primary_contact
end
