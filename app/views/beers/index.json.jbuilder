json.array! @beers.each do |beer|
  json.name beer.name
  json.alcohol_content beer.alcohol_content
  json.style beer.style
  json.malt beer.malt
  json.hop beer.hop
end