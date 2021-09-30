# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'some guy'
    fill_in 'Price', with: "12.12"
    fill_in 'Published date', with: "2021-09-29"
    click_on 'Create Book'
    #visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'some guy'
    fill_in 'Price', with: "12.12"
    fill_in 'Published date', with: "2021-09-29"
    click_on 'Create Book'
    #visit books_path
    expect(page).to have_content('some guy')
  end
end

  RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'some guy'
    fill_in 'Price', with: "12.12"
    fill_in 'Published date', with: "2021-09-29"
    click_on 'Create Book'
    #visit books_path
    expect(page).to have_content("12.12")
  end
end

  RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid published date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'some guy'
    fill_in 'Price', with: "12.12"
    fill_in 'Published date', with: "2021-09-29"
    click_on 'Create Book'
    #visit books_path
    expect(page).to have_content("2021-09-29")
  end
end