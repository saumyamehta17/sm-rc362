class Order < ActiveRecord::Base
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |order|
        csv << order.attributes.values_at(*column_names)
      end
    end
  end
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      puts row.to_hash
      Order.create! row.to_hash
    end
  end
  around_save :saving_order

  def saving_order
    puts "before"
    yield
    puts "after"
  end
end
