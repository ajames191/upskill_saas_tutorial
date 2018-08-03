class PagesController < ApplicationController
    # GET request for / which is our home page
    def home #corresponding "home.html.erb" file can be found in the saasapp/views/pages directory
        @basic_plan = Plan.find(1)
        @pro_plan = Plan.find(2)
    end
    
    # GET request for about path which is our about page
    def about #corresponding "about.html.erb" file can be found in the saasapp/views/pages directory
    end
end