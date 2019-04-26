class GamesController < ApplicationController

    def index
        @games = Game.all
        render json: @games
      end
    
      def show
        render json: @game
        #done in the before action.
      end
    
      def new
        @game = Game.new
      end
    
      def create
        @game = Game.create(game_params)
        if @game.valid?
          render json: @game
        else
          flash[:error] = @game.errors.full_messages
          render json: { error: 'failed to create game' }, status: :not_acceptable
        end
      end
    
      def edit
        #done in the before action
      end
    
      def update
        @game.update(game_params)
        if @game.valid?
          render json: @game
        else
          flash[:error] = @game.errors.full_messages
          render json: { error: 'failed to edit game' }, status: :not_acceptable
        end
      end
    
      def destroy
        @game.destroy
        redirect_to games_path
      end
    
      private
    
      def game_params
        params.require(:game).permit(:name, :sport_id)
      end
    
      def find_game
        @game = Game.find_by(id: params[:id])
      end

end
