module MatchHelper
  def display_duration(seconds)
    Time.at(seconds.to_i).utc.strftime("%H:%M:%S")
  end
end
