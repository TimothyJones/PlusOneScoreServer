class ScoreSummary < ApplicationRecord
  def as_json(options={})
    { :timesReached => self.reachedby ,
    :score => self.score,
    :globalHighScore => ScoreSummary.maximum('score')}
  end

  def self.increment(score)
    begin
       @ss = ScoreSummary.find_or_create_by!(score: score)
       @ss.increment!(:reachedby, 1)
       @ss
    rescue ActiveRecord::RecordNotUnique
      retry
    end
  end
end
