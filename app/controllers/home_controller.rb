class HomeController < ApplicationController
  include HomeHelper

  def edit
    # @user = User.new(
    @user = UserModel.new(
      name: 'albert',
      age: 30
    )
  end

  def update
    # @user = User.new(params.require(:user).permit(:name, :age))
    # @user.age = @user.age + 1
    @user = UserModel.new(params[:user_model])
    @user.age = @user.age.to_i + 1
    render :edit
  end
end
