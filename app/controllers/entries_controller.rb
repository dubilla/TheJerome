class EntriesController < ApplicationController
  def new
    @entry = Entry.new({
      picks_attributes: Tournament.order("starts_at, tournaments.name ASC").joins(:year).where(years: { name: new_params[:name] }).map{|t| Pick.new(tournament_id: t.id)}.map(&:attributes)
    })
  end

  def show
    @entry = Entry.includes(:user, picks: [:tournament, :team]).order("tournaments.starts_at").find(params[:id])
  end

  def edit
    @entry = Entry.includes(picks: [tournament: :teams]).order("tournaments.starts_at, tournaments.name ASC, teams.name").find(params[:id])
    authorize @entry
  end

  def update
    @entry = Entry.find(params[:id])
    authorize @entry
    @entry.year = Year.find_by_name('2020')
    if @entry.update_attributes(entry_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    @entry.year = Year.find_by_name('2020')
    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end

  private

  def new_params
    params
      .fetch(:year, { name: '2020' })
  end

  def entry_params
    params
      .required(:entry)
      .permit(picks_attributes: [:id, :team_id, :tournament_id])
  end
end
