require 'test_helper'

class SubContractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_contractor = sub_contractors(:one)
  end

  test "should get index" do
    get sub_contractors_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_contractor_url
    assert_response :success
  end

  test "should create sub_contractor" do
    assert_difference('SubContractor.count') do
      post sub_contractors_url, params: { sub_contractor: {  } }
    end

    assert_redirected_to sub_contractor_url(SubContractor.last)
  end

  test "should show sub_contractor" do
    get sub_contractor_url(@sub_contractor)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_contractor_url(@sub_contractor)
    assert_response :success
  end

  test "should update sub_contractor" do
    patch sub_contractor_url(@sub_contractor), params: { sub_contractor: {  } }
    assert_redirected_to sub_contractor_url(@sub_contractor)
  end

  test "should destroy sub_contractor" do
    assert_difference('SubContractor.count', -1) do
      delete sub_contractor_url(@sub_contractor)
    end

    assert_redirected_to sub_contractors_url
  end
end
