require 'test_helper'

class PracticeBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practice_blog = practice_blogs(:one)
  end

  test "should get index" do
    get practice_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_practice_blog_url
    assert_response :success
  end

  test "should create practice_blog" do
    assert_difference('PracticeBlog.count') do
      post practice_blogs_url, params: { practice_blog: { content: @practice_blog.content, title: @practice_blog.title } }
    end

    assert_redirected_to practice_blog_url(PracticeBlog.last)
  end

  test "should show practice_blog" do
    get practice_blog_url(@practice_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_practice_blog_url(@practice_blog)
    assert_response :success
  end

  test "should update practice_blog" do
    patch practice_blog_url(@practice_blog), params: { practice_blog: { content: @practice_blog.content, title: @practice_blog.title } }
    assert_redirected_to practice_blog_url(@practice_blog)
  end

  test "should destroy practice_blog" do
    assert_difference('PracticeBlog.count', -1) do
      delete practice_blog_url(@practice_blog)
    end

    assert_redirected_to practice_blogs_url
  end
end
