class Api::PatrimoniesController < ApplicationController
    respond_to :json
    PER_PAGE_RECORDS = 10 # Registros mostrados por pagina
    # before_action :authenticate_user!
    # skip_before_filter :verify_authenticity_token # To avoid send authenticity token

    def index
        patrimonies_paginated = Patrimony.order('id').page(params[:page]).per(PER_PAGE_RECORDS)
        json_response = {
            models: patrimonies_paginated, # Resultado de la consulta
            current_page: params[:page].to_i,
            perPage: PER_PAGE_RECORDS,
            total_pages: patrimonies_paginated.num_pages
        }
        respond_with json_response
    end

    def create
        patrimony = current_user.patrimonies.create(patrimony_params)
        # patrimony = Patrimony.create(patrimony_params)
        respond_with patrimony, location: nil
    end

    def show
        respond_with Patrimony.find(params[:id])
    end

    def update
        respond_with Patrimony.update(params[:id], patrimony_params)
    end

    def destroy
        respond_with Patrimony.destroy(params[:id])
    end

    private

    def patrimony_params
        params.permit(:id, :name, :value, :kind, :value, :acquisition_date, :user_id)
    end
end
