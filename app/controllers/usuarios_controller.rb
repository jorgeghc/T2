class UsuariosController < ApplicationController

  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  def show
    @usuario = Usuario.find(params[:id])
    render json: @usuario
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario, status:201
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      redirect_to @usuario, notice: 'Usuario was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
    render json: @usuario, status:204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      params.permit(:usuario, :nombre, :apellido, :twitter)
    end
end
