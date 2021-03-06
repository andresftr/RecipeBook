# frozen_string_literal: true

# Utensil model
class Utensil < ApplicationRecord
  has_many :utilities, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, length: { in: 3..20 }, uniqueness: { scope: :user_id }

  scope :my_utensils, -> { where(user_id: Plate.current_user.id) }
end
