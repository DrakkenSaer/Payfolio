class User < ActiveRecord::Base
  has_many :contracts
  has_many :projects, through: :contracts
  
  attr_accessor :role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  serialize :roles, Array
end
