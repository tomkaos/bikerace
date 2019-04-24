class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.string :first_name, limit: 20
      t.string :last_name, limit: 20
      t.string :email, limit: 30
      t.string :slogan, limit: 50

      t.timestamps
    end
  end
end
