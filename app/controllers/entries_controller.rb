class EntriesController < ApplicationController
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

  private

  def entry_params
    params
      .required(:entry)
      .permit(picks_attributes: [:id, :team_id, :tournament_id])
  end
end
