class Stop < ActiveRecord::Base

belongs_to :load

validates :stop_type, presence: true
validates :stop_sequence, presence: true
validates :stop_address, presence: true
validates :stop_city, presence: true
validates :stop_state, presence: true
validates :stop_country, presence: true

end
