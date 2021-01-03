# frozen_string_literal: true

class DeviseCreateDeepadmins < ActiveRecord::Migration[6.1]
  def change
    create_table :deepadmins do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.datetime :remember_created_at
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at
      t.timestamps null: false
    end

    add_index :deepadmins, :email,                unique: true
    add_index :deepadmins, :unlock_token,         unique: true
  end
end
