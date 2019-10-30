class Document < ApplicationRecord
  belongs_to :folder , optional: true
  belongs_to :confidential , optional: true
  belongs_to :status, optional: true
  belongs_to :user
  has_and_belongs_to_many :department , optional: true
  has_and_belongs_to_many :type , optional: true
  has_many_attached :images

  def thumbnail input
    return self.images[input].variant(resize: "150x150!").processed
  end

  def type_check
   if self.type != nil
     return self.type.name
   else
     return "-"
   end
  end

  def folder_check
   if self.folder != nil
     return "#{self.folder.number}"+" (#{self.folder.name})"
   else
     return "-"
   end
  end

  def confidential_check
    if self.confidential != nil
      return self.confidential.name
    else
      return "-"
    end
  end

  def department_check
   if self.department != nil
     return self.department.name
   else
     return "-"
   end
  end

  def status_check
    if self.status != nil
      return self.status.name
    else
      return "-"
    end
  end

end
