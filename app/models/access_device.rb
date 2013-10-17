class AccessDevice < ActiveRecord::Base
  attr_accessible :device_id, :device_manufacturer, :device_serial, :device_type
end
