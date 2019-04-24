require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new submission" do
    get new_submission_url
    assert_response :success
  end


  test "should not save submission without data" do
    submission = Submission.new
    assert_not submission.save
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post submissions_url, params: { submission: { first_name: 'tamas', last_name: 'konya', email: 'good@mail.com', slogan: 'something' } }
    end
    assert_redirected_to new_submission_url
  end

  test "should not create submission with wrongly formatted email" do
    assert_no_difference('Submission.count') do
      post submissions_url, params: { submission: { first_name: 'tamas', last_name: 'konya', email: 'wrongmail.com', slogan: 'something' } }
    end
    assert_response :success
  end
end
