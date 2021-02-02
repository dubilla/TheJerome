require 'rails_helper'

describe 'Viewing the Leaderboard', type: :system do
  let(:user) { User.create!(email: 'email@email.com', password: 'password') }
  let(:year) { Year.create!(name: '2020') }
  let(:big_east) { Tournament.create!(year: year) }
  let(:entry) { Entry.create!(year: year, name: 'Dan', user: user) }
  let(:round1) { Round.create!(name: 'Round 1', order: 1) }
  let(:georgetown) { Team.create!(name: 'Georgetown', tournament: big_east, round: round1) }
  let!(:pick) { Pick.create!(entry: entry, team: georgetown, tournament: big_east) }

  before do
    driven_by :selenium_chrome_headless
  end

  it 'should show the leaderboard' do
    visit '/leaders'
    expect(page).to have_text 'Dan'
    expect(page).to have_text '5'
  end
end
