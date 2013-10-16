class Notice < ActiveRecord::Base
  attr_accessible :destination, :message, :note
end
