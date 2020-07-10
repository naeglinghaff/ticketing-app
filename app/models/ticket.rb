class Ticket < ApplicationRecord
  validates :title, :description, :presence => true
  has_one :user
end
