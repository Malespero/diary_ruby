# frozen_string_literal: true

# Diary model
class Diary < ApplicationRecord
  # scope for worker to delete old diarys
  scope :old, -> { where('expiration < ?', Time.now) }
  has_many :notes
  enum kind: %i[pub priv]

  validates :kind, presence: true
  validates :title, presence: true
  validates :expiration, absence: true, if: :public?

  def public?
    kind == 'pub'
  end
end
