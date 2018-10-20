# frozen_string_literal: true

class Article < ApplicationRecord
  after_initialize :set_default_status

  belongs_to :category
  validates :header, presence: true
  validates :subheader, presence: true
  validates :body, presence: true
  validates :status, presence: true

  enum status: { pending: 0, approved: 1, rejected: 2 }

  def set_default_status
    self.status ||= :pending
  end
end
