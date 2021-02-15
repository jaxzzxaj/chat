class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

#room_usesテーブルは中間テーブル
#参照する役割を晴らすのはforeign_key :trueです
