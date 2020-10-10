class Api::Auth::SessionsController < ApplicationController

    def signin
        render json: params
    end

    def signout
        render json: params
    end

end