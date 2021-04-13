class Diary < ApplicationRecord
  has_many :notes
  enum kind: [:pub, :priv]

  validates :kind, presence: true
  validates :expiration, presence: false, if: :isPublic?

  def isPublic?
    kind == "pub"
  end

end