# frozen_string_literal: true

class Administrator < ApplicationRecord
  belongs_to :member
end
