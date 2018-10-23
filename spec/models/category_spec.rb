require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
  end

  describe 'names ' do 
    it { is_expected.to respond_to :general! }
    it { is_expected.to respond_to :general? }
    it { is_expected.to respond_to :business! }
    it { is_expected.to respond_to :business? }
    it { is_expected.to respond_to :politics! }
    it { is_expected.to respond_to :politics? }
    it { is_expected.to respond_to :sports! }
    it { is_expected.to respond_to :sports? }
  end
end
