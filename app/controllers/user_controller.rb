class UserController < ApplicationController
    before_action :set_user, only: [:show]
    def create
        @user = User.create!(user_params)
        # byebug
        redirect_to user_path(@user)
        # redirect_to user_index_path
    end
    def new
        # user = User.new

    end
    def index
        @users = User.all
    end

    def show 
        # byebug
        puts "User"
        @vari = "abc"
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :avatar)
    end


end
