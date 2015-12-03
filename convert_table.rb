table_data = [
  ["first_name", "last_name", "city", "state"],
  ["Elisabeth", "Gardenar", "Toledo", "OH"],
  ["Jamaal", "Du", "Sylvania", "OH"],
  ["Kathlyn", "Lavoie", "Maumee", "OH"]
]

# def convert_table (object)
#   result = []
#   keys = object.shift
#   object.each do |row|
#     new_entry = {}
#     row.each_with_index {|item, index| new_entry[keys[index]] = item}
#   end
# result
# end

def convert_table (object)
  keys = object.shift
  object.map {|item| Hash[keys.zip(item)]}
end

