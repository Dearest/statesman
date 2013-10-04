class AddStatesmanTo<%= klass.pluralize %> < ActiveRecord::Migration
  def change
    add_column :<%= table_name %>, :to_state, :string
    add_column :<%= table_name %>, :metadata, :text
    add_column :<%= table_name %>, :sort_key, :integer
    add_column :<%= table_name %>, :<%= parent_id %>, :integer

    add_index :<%= table_name %>, :<%= parent_id %>
    add_index :<%= table_name %>, [:sort_key, :mandate_id], unique: true
  end
end
