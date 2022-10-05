class UsersController < ApplicationController
    def show
        user = User.find_by(id:session[:user_id])
        if user
            render json:user
        else 
            render json:{errors:"Not authorised"}, status: :unauthorized
        end
    end
end
