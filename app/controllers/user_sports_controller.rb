class UserSportsController < ApplicationController

    def create
        @user_sport = UserSport.create(user_sport_params)
        if @user_sport.valid?
          render json: @user_sport
        else
          flash[:error] = @user_sport.errors.full_messages
          render json: { error: 'failed to create user_sport' }, status: :not_acceptable
        end
      end
    
    private

    def user_sport_params
    params.require(:user_sport).permit(:user_id :sport_id)
    end
    

end
