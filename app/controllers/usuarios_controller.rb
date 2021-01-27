class UsuariosController < ApplicationController

    def index
        @usuarios = Usuario.order('nome ASC')
    end

    def show
        @usuario = Usuario.find_by_id(params[:id])
    end

    def new
        @usuario = Usuario.new
    end

    def create
        @usuario = Usuario.new(params.require(:usuario).permit(:login, :nome, :email, :senha, :telefone, :admin))
        if @usuario.save
            redirect_to usuarios_path
        else
            render action: 'new'
        end
    end

    def edit
        @usuario = Usuario.find_by_id(params[:id])
    end

    def update
        @usuario = Usuario.find_by_id(params[:id])
        @usuario.attributes = params.require(:usuario).permit(:login, :nome, :email, :senha, :telefone, :admin)
        if @usuario.save
            redirect_to usuarios_path
        else
            render 'edit'
        end
    end

end