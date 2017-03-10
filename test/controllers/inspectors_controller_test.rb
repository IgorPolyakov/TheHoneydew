require 'test_helper'

class InspectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspector = inspectors(:one)
  end

  test "should get index" do
    get inspectors_url
    assert_response :success
  end

  test "should get new" do
    get new_inspector_url
    assert_response :success
  end

  test "should create inspector" do
    assert_difference('Inspector.count') do
      post inspectors_url, params: { inspector: { name: @inspector.name, position: @inspector.position } }
    end

    assert_redirected_to inspector_url(Inspector.last)
  end

  test "should show inspector" do
    get inspector_url(@inspector)
    assert_response :success
  end

  test "should get edit" do
    get edit_inspector_url(@inspector)
    assert_response :success
  end

  test "should update inspector" do
    patch inspector_url(@inspector), params: { inspector: { name: @inspector.name, position: @inspector.position } }
    assert_redirected_to inspector_url(@inspector)
  end

  test "should destroy inspector" do
    assert_difference('Inspector.count', -1) do
      delete inspector_url(@inspector)
    end

    assert_redirected_to inspectors_url
  end
end
