json.id beer.id
json.name beer.name
json.alcohol_content beer.alcohol_content
json.style beer.style
json.malt beer.malt
json.hop beer.hop

json.drinkers beer.drinkers do |drinker|
  json.name drinker.name
  json.email drinker.email
  json.address drinker.address
  json.address_2 drinker.address_2
end
