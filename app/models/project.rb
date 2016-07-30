class Project < ActiveRecord::Base
  has_many :contracts
  has_many :users, through: :contracts
  
  validates :title, :deadline, :client, :general_type, :specific_type, presence: true
end
