# frozen_string_literal: true

class Article < ApplicationRecord
  after_initialize :set_default_status

  belongs_to :category
  validates_presence_of :header
  validates_presence_of :subheader
  validates_presence_of :body
  validates_presence_of :status

  enum status: { pending: 0, approved: 1, rejected: 2, commented: 3 }

  def set_default_status
    self.status ||= :pending
  end
end
