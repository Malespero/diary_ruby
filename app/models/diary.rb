class Diary < ActiveRecord::Base
  has_many :notes
  enum kind: [:pub, :priv]
end