class Users::RegistrationsController < Devise::RegistrationsController
    def create
        super do |resource|
           if params[:plan] #if there is a plan parameter in the url
               resource.plan_id = params[:plan]
               if resource.plan == 2
                  resource.save_with_subscription
              else
                  resource.save
               end
           end
        end
    end
end