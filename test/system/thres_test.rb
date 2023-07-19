require "application_system_test_case"

class ThresTest < ApplicationSystemTestCase
  setup do
    @thre = thres(:one)
  end

  test "visiting the index" do
    visit thres_url
    assert_selector "h1", text: "Thres"
  end

  test "should create thre" do
    visit thres_url
    click_on "New thre"

    fill_in "Board", with: @thre.board_id
    fill_in "Context", with: @thre.context
    fill_in "Img path", with: @thre.img_path
    fill_in "Name", with: @thre.name
    fill_in "Time", with: @thre.time
    fill_in "Title", with: @thre.title
    click_on "Create Thre"

    assert_text "Thre was successfully created"
    click_on "Back"
  end

  test "should update Thre" do
    visit thre_url(@thre)
    click_on "Edit this thre", match: :first

    fill_in "Board", with: @thre.board_id
    fill_in "Context", with: @thre.context
    fill_in "Img path", with: @thre.img_path
    fill_in "Name", with: @thre.name
    fill_in "Time", with: @thre.time
    fill_in "Title", with: @thre.title
    click_on "Update Thre"

    assert_text "Thre was successfully updated"
    click_on "Back"
  end

  test "should destroy Thre" do
    visit thre_url(@thre)
    click_on "Destroy this thre", match: :first

    assert_text "Thre was successfully destroyed"
  end
end
