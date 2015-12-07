class Api::MovesController < ApplicationController
    respond_to :json
    PER_PAGE_RECORDS = 10 # Registros mostrados por pagina

    # skip_before_filter :verify_authenticity_token # To avoid send authenticity token

    def index
        moves_paginated = Move.order('id').page(params[:page]).per(PER_PAGE_RECORDS)
        json_response = {
            models: moves_paginated, # Resultado de la consulta
            current_page: params[:page].to_i,
            perPage: PER_PAGE_RECORDS,
            total_pages: moves_paginated.num_pages
        }
        respond_with json_response
    end

    def create
        move = Move.create(move_params)
        respond_with move, location: nil
    end

    def show
        respond_with Move.find(params[:id])
    end

    def update
        respond_with Move.update(params[:id], move_params)
    end

    def destroy
        respond_with Move.destroy(params[:id])
    end

    private

    def move_params
        params.permit(:id, :name, :description, :amount)
    end
end
