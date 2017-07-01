require 'rails_helper'

describe 'Showing the home page' do
  before { visit root_path }

  it 'displays a welcome message' do
    expect(page).to have_title 'Welcome to HammockTent 2.0'
    expect(page).to have_breadcrumbs 'HammockTent 2.0'
    expect(page).to have_headline 'Welcome to HammockTent 2.0'
  end
end
