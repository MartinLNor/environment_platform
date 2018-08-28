class Provider < ApplicationRecord
  has_many :services
  has_many :chains, through: :services
end
