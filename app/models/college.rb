class College < ApplicationRecord
    belongs_to :institution

    def mother_institution(institution_id)
        Institution.find(institution_id).name
    end
    
end
