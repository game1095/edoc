class Type < ApplicationRecord
  has_and_belongs_to_many :document , optional: true
end
