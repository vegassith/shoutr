class DashboardsController < ApplicationController

    def show
        #@shout = Shout.new
        #@shouts = current_user.timeline_shouts
        @dashboard = Dashboard.new(current_user)
    end

end