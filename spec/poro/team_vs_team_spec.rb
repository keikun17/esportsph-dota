require 'spec_helper'

describe TeamVsTeam do

  let(:team_1) { double("team", name: 'Red') }
  let(:team_2) { double("team", name: 'Blue') }
  subject { described_class.new(team_1, team_2) }

  it "has two teams" do
    subject.team_1.name == 'Red'
    subject.team_2.name == 'Blue'
  end

end
