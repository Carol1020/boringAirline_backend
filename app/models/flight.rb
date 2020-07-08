class Flight < ApplicationRecord
  belongs_to :airplane, :optional => true
  has_many :reservations
  has_and_belongs_to_many :users
end
