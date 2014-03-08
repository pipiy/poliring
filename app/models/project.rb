class Project < ActiveRecord::Base
  attr_accessible :image, :description, :name, :datepicker
  mount_uploader :image, ImageUploader

  validates :image, :description, :name, presence: true
end
