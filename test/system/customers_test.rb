require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Address", with: @customer.address
    fill_in "Age", with: @customer.age
    fill_in "Company", with: @customer.company
    fill_in "Created at", with: @customer.created_at
    fill_in "Deleted at", with: @customer.deleted_at
    fill_in "First name", with: @customer.first_name
    fill_in "Last name", with: @customer.last_name
    fill_in "Mail", with: @customer.mail
    fill_in "Phone", with: @customer.phone
    fill_in "Updated at", with: @customer.updated_at
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @customer.address
    fill_in "Age", with: @customer.age
    fill_in "Company", with: @customer.company
    fill_in "Created at", with: @customer.created_at
    fill_in "Deleted at", with: @customer.deleted_at
    fill_in "First name", with: @customer.first_name
    fill_in "Last name", with: @customer.last_name
    fill_in "Mail", with: @customer.mail
    fill_in "Phone", with: @customer.phone
    fill_in "Updated at", with: @customer.updated_at
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
