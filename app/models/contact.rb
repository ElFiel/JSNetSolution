class Contact < ActiveRecord::Base
  attr_accessible :content, :email, :name, :otros, :theme

  validates_presence_of :content, :email, :name, :theme
  validates :email, :email => true, :presence => true
end
