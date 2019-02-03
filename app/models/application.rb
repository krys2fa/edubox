class Application < ApplicationRecord
  has_one :document
  belongs_to :user
  belongs_to :institution
  validates :firstname, :lastname, :dob, :enrolled, :completed, 
  			:quantity, :studentid, :department, :college, :phone, :institution_id,
        :programme, :address, :reason, :presence => true

  has_attached_file :student_id,  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :student_id, :content_type => /\Aimage\/.*\Z/

  has_attached_file :acceptance_letter,  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :acceptance_letter, :content_type => /\Aimage\/.*\Z/

  
        
end
