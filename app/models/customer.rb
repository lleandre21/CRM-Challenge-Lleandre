# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :fullname, presence: true

  has_one_attached :image
end
