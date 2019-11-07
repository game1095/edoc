class Sent < ApplicationRecord
  has_many :document
  has_and_belongs_to_many :department , optional: true
end
