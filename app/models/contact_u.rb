class ContactU < ActiveRecord::Base
  validates :name, :email, :presence => true
end
