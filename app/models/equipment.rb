class Equipment < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :size, presence: true
  validates :unit, presence: true
  has_many :assigns
  has_many :chains, through: :assigns
end
