class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenthicate(params[:session][:password])

        else
            flash.now[:alert] = "There was something wrong with your login details"
            render 'new'
        end
    end

    def destroy
    end
end