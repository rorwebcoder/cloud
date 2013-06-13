class Load < ActiveRecord::Base

has_many :stops
has_many :messages

validates :bill_of_lading, presence: true, uniqueness: true
validates :mode, presence: true
end
