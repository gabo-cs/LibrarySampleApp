class AuthorsController < ApplicationController
  # Listar todos los registros
  # GET /authors
  def index
    @authors = Author.all
  end

  # Formulario de creación
  # Get /authors/new
  def new
    @author = Author.new
  end

  # Acción de crear un autor
  # POST /authors
  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  # Listar un registros específico
  # GET /authors/:id
  def show
    @author = Author.find(params[:id])
  end

  private

  # Strong params. Medida de seguridad
  def author_params
    params.require(:author).permit(:name, :date_of_birth)
  end
end
