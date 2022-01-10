class AddAasmStateToLots < ActiveRecord::Migration[6.1]
  def change
    add_column :lots, :aasm_state, :string
  end
end
