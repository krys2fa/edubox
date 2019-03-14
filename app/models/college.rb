class College < ApplicationRecord
    belongs_to :institution

    validates_presence_of :name

    def mother_institution(institution_id)
        Institution.find(institution_id).name
    end
    
end
