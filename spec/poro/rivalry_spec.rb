require 'spec_helper'

describe Rivalry do

  let(:team_1) { FactoryGirl.create(:team, name: 'Blue')}
  let(:team_2) { FactoryGirl.create(:team, name: 'Red')}

  describe "#find" do
    it "found with with 2 team args" do
       inst = described_class.find(team_1, team_2)
       inst.should be_a_kind_of(described_class)

       inst.team_1.should be_a_kind_of(Rivalry::Rival)
       inst.team_2.should be_a_kind_of(Rivalry::Rival)
    end


  end

end
