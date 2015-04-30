class CreateAddTelephoneToCustomers < ActiveRecord::Migration
  def change

  	add_column :customers, :telephone, :interger
  end
end
