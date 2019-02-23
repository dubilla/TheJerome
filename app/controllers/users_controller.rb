class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    binding.pry
    params.require(:user).permit(:name)
  end
end
