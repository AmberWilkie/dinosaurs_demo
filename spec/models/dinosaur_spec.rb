require 'rails_helper'

RSpec.describe Dinosaur, type: :model do
  describe 'DB columns' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :age}
    it { is_expected.to have_db_column :museum_number}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :museum_number}
  end

  describe 'Dinosaur factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:dinosaur)).to be_valid
    end
  end
end
