require "test_helper"

class Api::V1::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_post = api_v1_posts(:one)
  end

  test "should get index" do
    get api_v1_posts_url, as: :json
    assert_response :success
  end

  test "should create api_v1_post" do
    assert_difference("Api::V1::Post.count") do
      post api_v1_posts_url, params: { api_v1_post: { content: @api_v1_post.content, title: @api_v1_post.title, user_id: @api_v1_post.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_post" do
    get api_v1_post_url(@api_v1_post), as: :json
    assert_response :success
  end

  test "should update api_v1_post" do
    patch api_v1_post_url(@api_v1_post), params: { api_v1_post: { content: @api_v1_post.content, title: @api_v1_post.title, user_id: @api_v1_post.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_post" do
    assert_difference("Api::V1::Post.count", -1) do
      delete api_v1_post_url(@api_v1_post), as: :json
    end

    assert_response :no_content
  end
end
