class Book < ApplicationRecord
  # Relación de libros con autores a nivel de aplicación (modelos):
  belongs_to :author

  validates :title, :isbn, presence: true
end
