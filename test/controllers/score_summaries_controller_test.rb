require 'test_helper'

class ScoreSummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score_summary = score_summaries(:one)
  end

  test "should get index" do
    get score_summaries_url, as: :json
    assert_response :success
  end

  test "should create score_summary" do
    assert_difference('ScoreSummary.count') do
      post score_summaries_url, params: { score_summary: { reachedby: @score_summary.reachedby, score: @score_summary.score } }, as: :json
    end

    assert_response 201
  end

  test "should show score_summary" do
    get score_summary_url(@score_summary), as: :json
    assert_response :success
  end

  test "should update score_summary" do
    patch score_summary_url(@score_summary), params: { score_summary: { reachedby: @score_summary.reachedby, score: @score_summary.score } }, as: :json
    assert_response 200
  end

  test "should destroy score_summary" do
    assert_difference('ScoreSummary.count', -1) do
      delete score_summary_url(@score_summary), as: :json
    end

    assert_response 204
  end
end
