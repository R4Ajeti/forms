class UsersController < ApplicationController
    def new
    end
    def index
    end
    def create
        @user = User.new(post_params)

        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end

    private

    def post_params
        params.require(:user).permit(:username, :email, :password)
    end
end
