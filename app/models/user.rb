class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :applications

  # validates :username, presence: true, uniqueness: true
  # validates :firstname, :lastname, presence: true
  # validates :phone, presence: true, numericality: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, confirmation: true
end
