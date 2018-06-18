class ScoreSummariesController < ApplicationController
  before_action :set_score_summary, only: [:show, :update, :destroy]

  # GET /score_summaries
  def index
    @score_summaries = ScoreSummary.all

    render json: @score_summaries
  end

  # GET /score_summaries/1
  def show
    render json: @score_summary
  end

  # POST /score_summaries
  def create
    @score_summary = ScoreSummary.new(score_summary_params)

    if @score_summary.save
      render json: @score_summary, status: :created, location: @score_summary
    else
      render json: @score_summary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /score_summaries/1
  def update
    if @score_summary.update(score_summary_params)
      render json: @score_summary
    else
      render json: @score_summary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /score_summaries/1
  def destroy
    @score_summary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_summary
      @score_summary = ScoreSummary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def score_summary_params
      params.require(:score_summary).permit(:score, :reachedby)
    end
end
