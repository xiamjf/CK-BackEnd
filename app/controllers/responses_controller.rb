class ResponsesController < ProtectedController
  before_action :set_response, only: [:show, :update, :destroy]

  # GET /responses
  def index
    @responses = current_user.responses.all

    render json: @responses
  end

  # GET /responses/1
  def show
    render json: @response
  end

  # POST /responses
  def create
    @response = current_user.responses.new(response_params)

    if @response.save
      render json: @response, status: :created, location: @response
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /responses/1
  def update
    if @response.update(response_params)
      render json: @response
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /responses/1
  def destroy
    @response.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = current_user.responses.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def response_params
      params.require(:response).permit(:prompt, :question_id)
    end
end
