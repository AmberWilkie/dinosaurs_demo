require 'rails_helper'

RSpec.describe Bone, type: :model do
  describe 'DB columns' do
    it { is_expected.to have_db_column :name }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :dinosaur }
  end

  describe 'Bone factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:bone)).to be_valid
    end
  end
end
