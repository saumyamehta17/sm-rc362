class Order < ActiveRecord::Base
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |order|
        csv << order.attributes.values_at(*column_names)
      end
    end
  end

  around_save :saving_order

  def saving_order
    puts "before"
    yield
    puts "after"
  end
end
