class CitizenshipsController < ApplicationController
  before_action :set_citizenship, only: [:show, :update, :destroy]

    # GET /citizenships
    # GET /citizenships.json
    def index
      @citizenships = Citizenship.all

      render json: @citizenships
    end

    # GET /citizenships/1
    # GET /citizenships/1.json
    def show
      render json: @citizenship
    end

    # POST /citizenships
    # POST /citizenships.json
    def create
      @citizenship = Citizenship.new(citizenship_params)

      if @citizenship.save
        render json: @citizenship, status: :created, location: @citizenship
      else
        render json: @citizenship.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /citizenships/1
    # PATCH/PUT /citizenships/1.json
    def update
      @citizenship = Citizenship.find(params[:id])

      if @citizenship.update(citizenship_params)
        head :no_content
      else
        render json: @citizenship.errors, status: :unprocessable_entity
      end
    end

    # DELETE /citizenships/1
    # DELETE /citizenships/1.json
    def destroy
      @citizenship.destroy

      head :no_content
    end

    private

      def set_citizenship
        @citizenship = Citizenship.find(params[:id])
      end

      def citizenship_params
        params.require(:citizenship).permit(:status, :date_obtained, :person_id, :country_id)
      end
end
