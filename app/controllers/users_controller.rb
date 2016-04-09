class UsersController < ApplicationController
  def index
    puts "I have made it to the index"
    @users = User.all
  end
  def new

  end
  def create
    puts "in create method"
    @info = params[:info]

    if @info[:first_name].length > 3 and @info[:last_name].length > 3 and @info[:email].length > 3 and @info[:password].length > 3
      puts @info
      puts "$" * 100
      User.create(first_name:@info[:first_name], last_name:@info[:last_name], email:@info[:email], password:@info[:password])
    elsif
      puts "you got to give me more!!"
    end
    puts "hello from create function   " + "$$" * 20
    redirect_to '/users'
  end


  def show
    @user = User.find(params[:id])
    puts @user
  end

  def destroy
    u = User.find(params[:id])
    u.destroy
    redirect_to '/users/'
  end

  def edit
    @user = User.find(params[:id])
  end

  # def update
  #   @info = params[:info]
  #   u = User.find(params[:id])
  #   u.first_name = @info[:first_name]
  #   u.last_name = @info[:last_name]
  #   u.email = @info[:email]
  #   u.password = @info[:password]
  #   u.save
  #   redirect_to '/users/'
  # end


end
