class Department < ApplicationRecord
  has_many :user
  has_many :document
end
