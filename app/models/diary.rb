class Diary < ApplicationRecord
  has_many :notes
  enum kind: [:pub, :priv]

  validates :expiration, presence: true, if: :isPrivate?

  def isPrivate?
    kind == "priv"
  end

end