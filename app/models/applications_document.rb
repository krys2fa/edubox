class ApplicationsDocument < ApplicationRecord
  belongs_to :document
  belongs_to :application
end
