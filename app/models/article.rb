class Article < ApplicationRecord
    validates :header, presence: true
    validates :subheader, presence: true
    validates :body, presence: true
end
