class SportsController < ApplicationController

    def index
        @sports = Sport.all
        render json: @sports
      end
    
      def show
        render json: @sport
        #done in the before action.
      end
    
      def new
        @sport = Sport.new
      end
    
      def create
        @sport = Sport.create(sport_params)
        if @sport.valid?
          render json: @sport
        else
          flash[:error] = @sport.errors.full_messages
          render json: { error: 'failed to create sport' }, status: :not_acceptable
        end
      end
    
      def edit
        #done in the before action
      end
    
      def update
        @sport.update(sport_params)
        if @sport.valid?
          render json: @sport
        else
          flash[:error] = @sport.errors.full_messages
          render json: { error: 'failed to edit sport' }, status: :not_acceptable
        end
      end
    
      def destroy
        @sport.destroy
        redirect_to sports_path
      end
    
      private
    
      def sport_params
        params.require(:sport).permit(:name)
      end
    
      def find_sport
        @sport = Sport.find_by(id: params[:id])
      end
    
    
end
