class CreateTableUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usr do |t|
      t.string   :login
      t.string   :nome
      t.string   :email
      t.string   :senha
      t.boolean  :admin
      t.string   :telefone
      t.timestamps
    end
  end
end
