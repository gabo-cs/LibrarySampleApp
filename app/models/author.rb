class Author < ApplicationRecord
  # Relación de autores con libros a nivel de aplicación (modelos):
  has_many :books
end
