class Message < ActiveRecord::Base

  attr_protected :id
  belongs_to :load
  has_ancestry
end
