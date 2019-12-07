class Department < ApplicationRecord
  has_many :user
  belongs_to :sent , optional: true
  # has_many :document
  # has_and_belongs_to_many:document , optional: true
end
