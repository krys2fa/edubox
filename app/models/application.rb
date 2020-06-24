class Application < ApplicationRecord
  has_many :application_documents
  has_many :documents, through: :application_documents
  belongs_to :user
  belongs_to :institution
  has_one :college
  validates :firstname, :lastname, :dob, :enrolled, :completed,
  			:quantity, :department, :phone, :institution_id,
        :programme, :address, :reason, :presence => true

  has_attached_file :student_id, :styles => { :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :student_id, :content_type => /\Aimage\/.*\Z/

  has_attached_file :acceptance_letter, :styles => { :thumb => "150x150>" },  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :acceptance_letter, :content_type => /\Aimage\/.*\Z/

  geocoded_by :full_address

  after_validation :geocode, :latitude, :longitude

  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def full_address
    address
  end


end
