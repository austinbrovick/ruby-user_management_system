class UsersController < ApplicationController
  def index
    puts "I have made it to the index"
    @users = User.all
  end
end
