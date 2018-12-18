class Application < ApplicationRecord
  has_one :document
  validates :firstname, :lastname, :dob, :enrolled, :completed, 
  			:quantity, :studentid, :department, :college, :school, :phone, 
        :programme, :address, :reason, :presence => true
        
  belongs_to :user
end
