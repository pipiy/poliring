class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :description

  validates :name, :description, :email, :presence => true, :length => { :minimum => 4, :too_short => "Please enter at least 4 characters" }
end
