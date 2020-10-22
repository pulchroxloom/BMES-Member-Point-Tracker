# frozen_string_literal: true

class ManualPoint < ApplicationRecord
  belongs_to :member
  belongs_to :semester
  enum reason: { miscellaneous: 0, volunteer: 10, transfer_old: 20 }
end
