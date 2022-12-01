class UsersController < ApplicationController
    def show
        user = user.find_by(id: session[user_id])
        if user
            render json: user
        else
            render json: {error: "Not authorized"}, status: :unauthorised
        end
        
    end
end
