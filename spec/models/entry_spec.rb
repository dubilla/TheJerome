require 'rails_helper'

describe 'Entry' do
  describe '#score' do
    let(:entry) { Entry.new }
    it 'return a score of zero' do
      expect(entry.score).to eq 0
    end
  end
  describe '#points_possible_remaining' do
    let(:entry) { Entry.new }
    it 'returns a max points possible remaining' do
      expect(entry.points_possible_remaining).to eq 0
    end
  end
end
