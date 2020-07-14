class CreateNegotiations < ActiveRecord::Migration[5.2]
  def change
    create_table :negotiations do |t|
      t.references :payment, foreign_key: true
      t.references :store, foreign_key: true
      t.string :cpf
      t.string :card
      t.date :date
      t.time :time
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
