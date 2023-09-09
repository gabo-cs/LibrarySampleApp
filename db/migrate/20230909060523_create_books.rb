class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :isbn, null: false, index: { unique: true }
      t.string :summary
      # Relación de libros con autores a nivel de DB:
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
