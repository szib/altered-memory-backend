class ResultsController < ApplicationController

    def index
        results = Result.all.sort_by(&:score).reverse.first(10)
        render json: results, except: [:created_at, :updated_at]
    end

    def create
        results = Result.new(leaderboard_params)
        
        if results.save
            render json: results, except: [:created_at, :updated_at]
        else
            render json: {message: 'Error happened :/'}, status: 400
        end
    end

    def leaderboard_params
        params.require(:results).permit(:name, :score, :time)      
    end
    
end
