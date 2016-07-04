class UsersController < ApplicationController
    before_action :authenticate_user!

    def dashboard
        if current_user.admin?
            redirect_to admin_path(current_user)
        elsif current_user.freelancer?
            redirect_to freelancer_path(current_user)
        else
            redirect_to client_path(current_user)
        end
    end
end
