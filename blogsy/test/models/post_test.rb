require 'test_helper'
require 'pry'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_verify_post_creates_with_usertitlebody
    user  = 'Ellen'
    title = 'Ellen goes wild'
    body  = 'Ellen bla bla bla'
    post = Post.new(user: user, title: title, body: body)
    assert_equal true,post.save
  end

  def test_verify_post_requires_title
    user  = 'Ellen'
    title = nil
    body  = 'Ellen bla bla bla'
    post = Post.new(user: user, title: title, body: body)
    refute true,post.save
  end

  def test_verify_post_requires_user
    user  = nil
    title = 'Ellen goes wild'
    body  = 'Ellen bla bla bla'
    post = Post.new(user: user, title: title, body: body)
    refute true,post.save
  end

  def test_verify_post_requires_body
    user  = 'Ellen'
    title = 'Ellen goes wild'
    body  = nil
    post = Post.new(user: user, title: title, body: body)
    refute true,post.save
  end

end
