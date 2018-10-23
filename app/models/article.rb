# frozen_string_literal: true

class Article < ApplicationRecord
  after_initialize :set_default_status
  after_initialize :set_default_premium_status

  belongs_to :category
  validates_presence_of :header
  validates_presence_of :subheader
  validates_presence_of :body
  validates_presence_of :status
  validates_presence_of :premium_status

  enum status: { pending: 0, approved: 1, rejected: 2, for_revision: 3 }
  enum premium_status: { free: 0, premium: 1 }

  def set_default_status
    self.status ||= :pending
  end

  def set_default_premium_status
    self.premium_status ||= :free
  end
end
