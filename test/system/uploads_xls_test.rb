require "application_system_test_case"

class UploadsXlsTest < ApplicationSystemTestCase
  test "upload xls" do
    visit root_url

    page.attach_file("doc[attachment]", Rails.root + "test/fixtures/files/test.txt")
    click_on "Upload File"

    assert_selector "li", text: "test.txt"

    page.attach_file("doc[attachment]", Rails.root + "test/fixtures/files/test.xls")
    click_on "Upload File"

    assert_selector "li", text: "test.xls"
  end
end
