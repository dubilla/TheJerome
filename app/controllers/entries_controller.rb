class EntriesController < ApplicationController
  def new
    @entry = Entry.new({
      picks_attributes: Tournament.order("starts_at, tournaments.name ASC").all.map{|t| Pick.new(tournament_id: t.id)}.map(&:attributes)
    })
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.includes(:picks).find(params[:id])
    authorize @entry
  end

  def update
    @entry = Entry.find(params[:id])
    authorize @entry
    if @entry.update_attributes(entry_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end

  private

  def entry_params
    params
      .required(:entry)
      .permit(picks_attributes: [:id, :team_id, :tournament_id])
  end
end
