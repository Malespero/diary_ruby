class Diary < ApplicationRecord
  scope :old, -> { where("expiration < ?", Time.now) }
  has_many :notes
  enum kind: [:pub, :priv]

  validates :kind, presence: true
  validates :expiration, absence: true, if: :is_public

  def is_public
    kind == "pub"
  end

end