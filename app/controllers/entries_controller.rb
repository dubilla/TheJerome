class EntriesController < ApplicationController
  def new
    @entry = Entry.new({
      picks_attributes: Tournament.all.map{|t| Pick.new(tournament_id: t.id)}.map(&:attributes)
    })
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
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
