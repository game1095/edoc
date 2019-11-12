require 'test_helper'

class DocumentMailerTest < ActionMailer::TestCase
  test "send_document" do
    mail = DocumentMailer.send_document
    assert_equal "Send document", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
