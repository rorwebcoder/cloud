class Load < ActiveRecord::Base

has_many :stops
has_many :messages
belongs_to :shipper
belongs_to :carrier
belongs_to :vendor

validates :bill_of_lading, presence: true, uniqueness: true
validates :mode, presence: true
end
