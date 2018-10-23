class Category < ApplicationRecord
    after_initialize :set_default_status
    
    has_many :articles
    validates_presence_of :name
    validates_presence_of :status

    enum status: { general: 0, business: 1, politics: 2, sports: 3 }

    def set_default_status
        self.status ||= :general
    end
end
