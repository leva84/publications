# frozen_string_literal: true

class CreatePublicationCards < ActiveRecord::Migration[7.0]
  def change
    create_table :publication_cards do |t|
      t.string :url
      t.integer :interval
      t.integer :count
      t.string :title
      t.text :text
      t.string :status, default: 'in_progress'
      t.timestamps
    end
  end
end
