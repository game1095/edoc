class Department < ApplicationRecord
  has_many :user
  has_and_belongs_to_many :sent , optional: true
end
