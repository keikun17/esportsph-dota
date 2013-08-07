require 'spec_helper'

describe Team do
  context 'with 3 wins and 5 matches' do

    let(:matches) { double(Object, count: 5) }
    subject { described_class.new.stub({win_count: 3, matches: matches} ) }

    it "has a loss count of 2" do
      should have(2).loss_count
    end
  end
end

# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

