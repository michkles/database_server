require_relative 'spec_helper'

feature 'database server' do
  scenario 'it should be accessible on port 4000' do
    visit 'http://localhost:4000'
    expect(page.status_code).to eq 200
  end
end
