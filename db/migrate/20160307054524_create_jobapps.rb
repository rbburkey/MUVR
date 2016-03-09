class CreateJobapps < ActiveRecord::Migration
  def change
    create_table :jobapps do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
