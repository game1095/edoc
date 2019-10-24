class Document < ApplicationRecord
  belongs_to :type
  belongs_to :folder
  belongs_to :confidential
  belongs_to :user
  belongs_to :department
  has_many_attached :images

  def thumbnail input
    return self.images[input].variant(resize: "300x300!").processed
  end
end
