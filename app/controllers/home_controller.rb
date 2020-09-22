class HomeController < ApplicationController
 
    def index
        render json: {
            routes: [
                auth: {
                    sign_in: "/api/auth/signin",
                    signin_out: "/api/auth/signout",
                    register_user: "/api/auth/users/signup",
                    forgot_password: "/api/auth/users/forgot_password",
                    reset_password: "/api/auth/users/reset_password"

                },
                v1_routes: {
                    status: "No Routes defined yet"
                }
            ]
        }
    end

end
