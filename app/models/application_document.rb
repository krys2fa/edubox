class ApplicationDocument < ApplicationRecord
  belongs_to :document
  belongs_to :application
end
