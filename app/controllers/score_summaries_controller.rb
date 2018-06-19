class ScoreSummariesController < ApplicationController
  before_action :set_score_summary, only: [:show, :update, :destroy]

  # GET /score_summaries
  def index
    @score_summaries = ScoreSummary.all
    render json: @score_summaries
  end

  def see_score
    render json: ScoreSummary.increment(params[:score].to_i), status: :ok
  end

  def save_score
    render json: ScoreSummary.increment(params[:score].to_i), status: :created
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_summary
      @score_summary = ScoreSummary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def score_summary_params
      params.require(:score_summary).permit(:score, :reachedby, :u)
    end
end
