class BooksController < ApplicationController
  # Listar todos los registros
  # GET /books
  def index
    @books = Book.all
  end

  # Formulario de creación
  # Get /books/new
  def new
    @book = Book.new
  end

  # Acción de crear un libro
  # POST /books
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "Joda firme!"
    else
      flash.alert = "Hey mi vale y entonces"
      redirect_to books_path, alert: @book.errors
    end
  end

  # Listar un registros específico
  # GET /books/:id
  def show
    @book = Book.find(params[:id])
  end

  private

  # Strong params. Medida de seguridad
  def book_params
    params.require(:book).permit(:title, :isbn, :author_id)
  end
end
