# Preview all emails at http://localhost:3000/rails/mailers/document_mailer
class DocumentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/document_mailer/send_document
  def send_document
    DocumentMailer.send_document
  end

end
