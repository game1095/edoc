class Document < ApplicationRecord
  belongs_to :type
  belongs_to :folder
  belongs_to :confidential
  belongs_to :user
  belongs_to :department
end
