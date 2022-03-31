# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :log

      t.timestamps
    end
    add_reference :messages, :card
  end
end
