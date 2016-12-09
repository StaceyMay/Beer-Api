json.array! @beers.each do |beer|
  json.partial! 'employee.json.jbuilder', employee: employee
end