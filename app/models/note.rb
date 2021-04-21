# frozen_string_literal: true

# Note model. nothing special, just belongs to.
class Note < ApplicationRecord
  belongs_to :diary
end
