json.extract! addr, :id, :door_no, :street, :city, :state, :code, :orderable_id, :orderable_type, :created_at, :updated_at
json.url addr_url(addr, format: :json)
