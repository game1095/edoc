class Sent < ApplicationRecord
  has_many :document
  has_many :department
end
