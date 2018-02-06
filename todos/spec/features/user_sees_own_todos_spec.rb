require "rails_helper"

feature "User sees own todos" do
  before { Todo.create!(title: "Buy milk", email: "someone_else@example.com") }
  scenario "doesn't see others' todos" do

    sign_in_as "someone@example.com"

    expect(page).not_to display_todo "Buy milk"
  end
end
