class Api::Auth::SessionsController < ApplicationController

    def signin
        json({
            route: "Sign In", 
            username: params['session']['username'],
        })
    end

    def signout
        json({
            route: "Sign out", 
            username: params['session']['username']
        })
    end

    private
        def json(payload)
            token = Auth.encode(payload)
            render json: {
                token: token,
                decoded_token: Auth.decode(token)
            }
        end
end