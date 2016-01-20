json.array!(@selections) do |selection|
  json.extract! selection, :id, :name, :begin, :end, :owner
  json.url selection_url(selection, format: :json)
end
