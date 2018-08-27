class Equipment < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :size, presence: true
  validates :unit, presence: true
  has_and_belongs_to_many :chains
end
