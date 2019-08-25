class UsersController < ApplicationController
  def load
  @users = User.order(:name).limit(50)
  respond_to do |format|
    format.html
    format.csv { send_data @users.to_csv}
  end
  end
end