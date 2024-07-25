require "application_system_test_case"

class UploadsTest < ApplicationSystemTestCase
  setup do
    @upload = uploads(:one)
  end

  test "visiting the index" do
    visit uploads_url
    assert_selector "h1", text: "Uploads"
  end

  test "should create upload" do
    visit uploads_url
    click_on "New upload"

    check "Delete first download" if @upload.delete_first_download
    fill_in "Name", with: @upload.name
    fill_in "Password hash", with: @upload.password_hash
    click_on "Create Upload"

    assert_text "Upload was successfully created"
    click_on "Back"
  end

  test "should update Upload" do
    visit upload_url(@upload)
    click_on "Edit this upload", match: :first

    check "Delete first download" if @upload.delete_first_download
    fill_in "Name", with: @upload.name
    fill_in "Password hash", with: @upload.password_hash
    click_on "Update Upload"

    assert_text "Upload was successfully updated"
    click_on "Back"
  end

  test "should destroy Upload" do
    visit upload_url(@upload)
    click_on "Destroy this upload", match: :first

    assert_text "Upload was successfully destroyed"
  end
end
