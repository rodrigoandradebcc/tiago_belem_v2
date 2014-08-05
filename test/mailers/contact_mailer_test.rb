require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "contact_data" do
    mail = ContactMailer.contact_data
    assert_equal "Contact data", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "thanks" do
    mail = ContactMailer.thanks
    assert_equal "Thanks", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
