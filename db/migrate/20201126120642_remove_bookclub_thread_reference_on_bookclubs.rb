class RemoveBookclubThreadReferenceOnBookclubs < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookclubs, :thread_bookclub, index: true
  end
end
