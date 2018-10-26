require 'rails_helper'

RSpec.describe User, type: :model do

  describe "db columns" do 
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :provider }
    it { is_expected.to have_db_column :uid }
    it { is_expected.to have_db_column :tokens }
    it { is_expected.to have_db_column :confirmation_token }
    it { is_expected.to have_db_column :confirmed_at }
    it { is_expected.to have_db_column :confirmation_sent_at }
  end

  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
end
