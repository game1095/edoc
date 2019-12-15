class Department < ApplicationRecord
  has_many :user
  has_and_belongs_to_many :document , optional: true

  #
  # has_many :sents
  # has_many :documents , :through => :sents
end
