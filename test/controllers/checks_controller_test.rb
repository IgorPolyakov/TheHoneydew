require 'test_helper'

class ChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check = checks(:one)
  end

  test "should get index" do
    get checks_url
    assert_response :success
  end

  test "should get new" do
    get new_check_url
    assert_response :success
  end

  test "should create check" do
    assert_difference('Check.count') do
      post checks_url, params: { check: { amount: @check.amount, case_number: @check.case_number, category: @check.category, checks_number: @check.checks_number, deadline: @check.deadline, direction: @check.direction, for_office: @check.for_office, number_of_volumes: @check.number_of_volumes, reason: @check.reason, response_measure: @check.response_measure, term: @check.term, violation: @check.violation } }
    end

    assert_redirected_to check_url(Check.last)
  end

  test "should show check" do
    get check_url(@check)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_url(@check)
    assert_response :success
  end

  test "should update check" do
    patch check_url(@check), params: { check: { amount: @check.amount, case_number: @check.case_number, category: @check.category, checks_number: @check.checks_number, deadline: @check.deadline, direction: @check.direction, for_office: @check.for_office, number_of_volumes: @check.number_of_volumes, reason: @check.reason, response_measure: @check.response_measure, term: @check.term, violation: @check.violation } }
    assert_redirected_to check_url(@check)
  end

  test "should destroy check" do
    assert_difference('Check.count', -1) do
      delete check_url(@check)
    end

    assert_redirected_to checks_url
  end
end
