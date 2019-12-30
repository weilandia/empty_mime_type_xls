class UploadsXlsTest < ApplicationSystemTestCase
  test "upload xls" do
    visit root_url
    click_on "Choose File"
  end
end
