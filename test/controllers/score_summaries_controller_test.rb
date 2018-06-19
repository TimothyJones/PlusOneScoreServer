require 'test_helper'

class ScoreSummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score_summary = score_summaries(:one)
  end

  test "should get index" do
    get score_summaries_url, as: :json
    assert_response :success
  end

end
