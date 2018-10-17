json.array! @items do |item|
  json.id item.id
  json.name item.name
  json.price item.price
  json.images item.images
end