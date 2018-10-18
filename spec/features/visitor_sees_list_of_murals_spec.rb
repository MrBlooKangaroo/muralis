require 'rails_helper'

# [] Visiting the `/restaurants` path should contain a list of restaurants.
# [] Visiting the `/restaurants/10` path should show the restaurant details for a restaurant with the ID of 10.
# [] Visiting the root path should display a list of all restaurants.

feature "visitor sees a list of murals" do
  scenario "sees a list of murals" do
    testuser = User.create!(first_name: 'Name', last_name: 'last', email: 'happyboi@gmail', password: '12345678')
    mural_1 = Mural.create!(title: 'Dumpling King', description: 'Dumps for days', location: 'Boston', user_id: testuser.id, photo: '12111')
    mural_2 = Mural.create!(title: 'Donut Boy', description: 'Dodos for days', location: 'Boston', user_id: testuser.id, photo: '13333')

    visit murals_path

    expect(page).to have_content "Donut Boy"
    expect(page).to have_content "Dumpling King"

  end
end
