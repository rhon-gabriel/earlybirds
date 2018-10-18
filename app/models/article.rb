class Article < ApplicationRecord

    belongs_to :category
    validates :header, presence: true
    validates :subheader, presence: true
    validates :body, presence: true
end
