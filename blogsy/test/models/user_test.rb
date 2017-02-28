require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_user_has_a_username_and_email
    foo_username  = 'Chris'
    foo_email     = 'chris@ironyard.com'
    user = User.create(
      username: foo_username,
      email:    foo_email
    )
    assert_equal user.username,foo_username
    assert_equal user.email,foo_email
  end

  def test_verify_user_requires_username
    foo_username  = nil
    foo_email     = 'chris@ironyard.com'
    user = User.new(
      username: foo_username,
      email:    foo_email
    )
    assert_equal false,user.save
  end

  def test_verify_user_requires_email
    foo_username  = 'Chris'
    foo_email     = nil
    user = User.new(
      username: foo_username,
      email:    foo_email
    )
    assert_equal false,user.save
  end

end
