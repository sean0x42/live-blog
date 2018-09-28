# frozen_string_literal: true

# Article Model
# with validation
class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
end
