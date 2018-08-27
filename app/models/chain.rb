class Chain < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :risk, presence: true
  has_and_belongs_to_many :equipment
end
