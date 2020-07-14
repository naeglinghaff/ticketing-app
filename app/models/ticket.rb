class Ticket < ApplicationRecord
  validates :title, :description, :user, :presence => true
  belongs_to :user
end
