class Programme < ApplicationRecord
    belongs_to :faculty
    belongs_to :college

    validates_presence_of :name
end
