class OperadorasController < ApplicationController
  before_action :set_operadora, only: [:show, :edit, :update, :destroy]

  # GET /operadoras
  # GET /operadoras.json
  def index
    @operadoras = Operadora.all
    render json:  ActiveModel::ArraySerializer.new(@operadoras, each_serializer: OperadorasSerializer).to_json
  end

  # GET /operadoras/1
  # GET /operadoras/1.json
  def show
  end

  # GET /operadoras/new
  def new
    @operadora = Operadora.new
  end

  # GET /operadoras/1/edit
  def edit
  end

  # POST /operadoras
  # POST /operadoras.json
  def create
    @operadora = Operadora.new(operadora_params)

    respond_to do |format|
      if @operadora.save
        format.html { redirect_to @operadora, notice: 'Operadora was successfully created.' }
        format.json { render :show, status: :created, location: @operadora }
      else
        format.html { render :new }
        format.json { render json: @operadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operadoras/1
  # PATCH/PUT /operadoras/1.json
  def update
    respond_to do |format|
      if @operadora.update(operadora_params)
        format.html { redirect_to @operadora, notice: 'Operadora was successfully updated.' }
        format.json { render :show, status: :ok, location: @operadora }
      else
        format.html { render :edit }
        format.json { render json: @operadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operadoras/1
  # DELETE /operadoras/1.json
  def destroy
    @operadora.destroy
    respond_to do |format|
      format.html { redirect_to operadoras_url, notice: 'Operadora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operadora
      @operadora = Operadora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operadora_params
      params.require(:operadora).permit(:nome, :categoria, :codigo, :preco)
    end
end
