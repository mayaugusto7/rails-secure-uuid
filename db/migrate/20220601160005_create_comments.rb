class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :content
      t.uuid :user_id
      t.timestamps
    end

    add_index :comments, :user_id
  end
end
