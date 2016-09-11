class UsersController < ApplicationController

  def new
    @user = User.new
    # has_many adds 'collection.build'
    @user.addresses.build(address_type: "Home")
    @user.addresses.build(address_type: "Work")
    # belongs_to adds 'build_association'
    @user.build_team
  end #building this out let's us make use of "form_for"

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user #/users/#{user.id}
      # equivalent to user_path(@user)
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :addresses_attributes => [:street_1, :street_2, :address_type], :team_attributes => [:name, :hometown])
    end

end
