class Score < ApplicationRecord
  def as_json(options={})
    { :timesReached => self.reachedby }
end
