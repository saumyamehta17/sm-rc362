json.array!(@orders) do |order|
  json.extract! order, :id, :number, :price, :shipping
  json.url order_url(order, format: :json)
end
