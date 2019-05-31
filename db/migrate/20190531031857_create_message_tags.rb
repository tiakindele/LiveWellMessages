class CreateMessageTags < ActiveRecord::Migration[5.2]
  def change
    create_table :messages_tags, :id => false do |t|
      t.references :message, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
