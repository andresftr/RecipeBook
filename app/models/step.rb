# frozen_string_literal: true

# Step model
class Step < ApplicationRecord
  has_many :uses, dependent: :destroy
  has_many :utilities, dependent: :destroy
  belongs_to :recipe
  accepts_nested_attributes_for :uses, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :utilities, reject_if: :all_blank, allow_destroy: true
  before_save :temp

  validates :operation, presence: true, length: { minimum: 3 }
  validates :expected_minutes, numericality: { greater_than: 0, less_than: 60 }

  private

  def temp
  end
end
