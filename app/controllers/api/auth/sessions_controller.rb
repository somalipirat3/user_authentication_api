class Api::Auth::SessionsController < ApplicationController

    def signin
        user_fake = "1,#{Time.now.to_i}"
        token = Auth::Jwt.encode(user_fake)
        data = Auth::Jwt.decode(token)
        @user = User.find_by(username: params[:username])
        render json: {token: token, decoded: data}
    end

    def signout
        render json: params
    end

    private 
        # LOGGING IN
        def login()
            @user = User.find_by(username: params[:username])
        end

end