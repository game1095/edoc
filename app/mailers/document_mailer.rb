class DocumentMailer < ApplicationMailer
  default form: 'noreply@postedoc.com'
  def send_document(document,email)
    @document = document
    @sent_emails = email.collect(&:email).join(",")
    mail to: @sent_emails , subject: "ส่งเอกสารหัวเรื่อง #{@document.title}"
  end
end
