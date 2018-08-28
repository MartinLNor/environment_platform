class Service < ApplicationRecord
  belongs_to :chain
  belongs_to :provider
end
