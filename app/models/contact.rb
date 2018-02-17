class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :comments
  validates :comments, length: 3..1024

end
