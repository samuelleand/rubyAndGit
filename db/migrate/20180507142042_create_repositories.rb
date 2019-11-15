class CreateRepositories < ActiveRecord::Migration[5.0]
  def change
    create_table :repositories do |t|
      t.string :owner
      t.string :name
      t.string :description
      t.string :language
      t.string :link

      t.timestamps
    end
  end
end
