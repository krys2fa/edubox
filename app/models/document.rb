class Document < ApplicationRecord
  has_many :application_documents
  has_many :applications, through: :application_documents
end
