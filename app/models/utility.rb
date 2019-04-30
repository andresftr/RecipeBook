# frozen_string_literal: true

# Utility Model
class Utility < ApplicationRecord
  belongs_to :step
  belongs_to :utensil

  validates :utensil, uniqueness: { scope: :step }
end
