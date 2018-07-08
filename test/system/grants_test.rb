require "application_system_test_case"

class GrantsTest < ApplicationSystemTestCase
  setup do
    @grant = grants(:one)
  end

  test "visiting the index" do
    visit grants_url
    assert_selector "h1", text: "Grants"
  end

  test "creating a Grant" do
    visit grants_url
    click_on "New Grant"

    fill_in "Deadline", with: @grant.deadline
    fill_in "Funded Amount", with: @grant.funded_amount
    fill_in "Funder", with: @grant.funder
    fill_in "Internal Deadline", with: @grant.internal_deadline
    fill_in "Previosly Awarded", with: @grant.previosly_awarded
    fill_in "Priority Level", with: @grant.priority_level
    fill_in "Program", with: @grant.program
    fill_in "Range Max", with: @grant.range_max
    fill_in "Range Min", with: @grant.range_min
    fill_in "State", with: @grant.state
    click_on "Create Grant"

    assert_text "Grant was successfully created"
    click_on "Back"
  end

  test "updating a Grant" do
    visit grants_url
    click_on "Edit", match: :first

    fill_in "Deadline", with: @grant.deadline
    fill_in "Funded Amount", with: @grant.funded_amount
    fill_in "Funder", with: @grant.funder
    fill_in "Internal Deadline", with: @grant.internal_deadline
    fill_in "Previosly Awarded", with: @grant.previosly_awarded
    fill_in "Priority Level", with: @grant.priority_level
    fill_in "Program", with: @grant.program
    fill_in "Range Max", with: @grant.range_max
    fill_in "Range Min", with: @grant.range_min
    fill_in "State", with: @grant.state
    click_on "Update Grant"

    assert_text "Grant was successfully updated"
    click_on "Back"
  end

  test "destroying a Grant" do
    visit grants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grant was successfully destroyed"
  end
end
