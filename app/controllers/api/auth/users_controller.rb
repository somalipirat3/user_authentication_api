class Api::Auth::UsersController < ApplicationController
    
    # REGISTER
    def register
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def all
        @users = User.all
        render json: @users
    end

    private
        # Excepted 
        def user_params
            params.permit(:username, :password, :pin_code)
        end

end