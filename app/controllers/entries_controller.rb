class EntriesController < ApplicationController
  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @tournaments = [
      {
        name: 'American',
        teams: [
          'Central Florida',
          'Memphis',
          'South Florida'
        ]
      },
      {
        name: 'ACC',
        teams: []
      },
      {
        name: 'Atlantic 10',
        teams: []
      }
    ]
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
  end
end
