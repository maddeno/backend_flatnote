class UsersController < ApplicationController

    def show
        user = User.find_by(username: params[:username])
        render json: user
    end

    def get_notes
        puts params
        notes = Note.where(user_id: params[:id])
        render json: notes
    end

end
