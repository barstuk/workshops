class UsersController < ApplicationController

  expose_decorated(:users) { User.users_only.decorate }
  expose_decorated(:user)


  def show
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit
  end

end
