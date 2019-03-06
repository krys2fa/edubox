class Institution < ApplicationRecord
    has_many :applications
    has_many :faculties, dependent: :destroy
    has_many :colleges, dependent: :destroy
    has_many :programmes, :through => :faculties
    has_many :programmes, through: :colleges


end
