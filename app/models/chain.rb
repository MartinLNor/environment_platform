class Chain < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :risk, presence: true
  has_many :actives
  has_many :users, through: :actives
  has_many :assigns
  has_many :equipment, through: :assigns
  has_many :services
  has_many :providers, through: :services
end
