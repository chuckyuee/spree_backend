class AddFilterParamToSpreeProductProperties < ActiveRecord::Migration[6.0]
  def change
    unless column_exists?(:spree_product_properties, :filter_param)
      add_column :spree_product_properties, :filter_param, :string
      add_index :spree_product_properties, :filter_param
    end
  end
end