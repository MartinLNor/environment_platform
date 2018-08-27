class RequestDetail < ApplicationRecord
  belongs_to :request
  belongs_to :chain
  belongs_to :equipment
end
