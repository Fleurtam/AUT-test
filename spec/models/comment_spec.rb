require 'rails_helper'

RSpec.describe Comment, type: :model do


    it 'Should have a vaild factory' do
      expect(FactoryBot.build(:comment)).to be_valid
    end

    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :body}
    it { is_expected.to have_db_column :email}

    it { is_expected.to belong_to :article}


end
