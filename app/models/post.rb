class Post < ActiveRecord::Base
  default_scope order('posts.created_at DESC')

  attr_accessible :content, :title, :video, :image
  validates :content, :title, presence: true

  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
end
