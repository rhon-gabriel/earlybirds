class Category < ApplicationRecord
    after_initialize :set_default_name
    
    has_many :articles
    validates_presence_of :name
    
    enum name: { general: 0, business: 1, politics: 2, sports: 3, programming: 4, education: 5 }

    def set_default_name
        self.name ||= :general
    end
end
