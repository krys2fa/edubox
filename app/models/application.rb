class Application < ApplicationRecord
  has_one :document
  belongs_to :user
  validates :firstname, :lastname, :dob, :enrolled, :completed, 
  			:quantity, :studentid, :department, :college, :phone, 
        :programme, :address, :reason, :presence => true
        
end
