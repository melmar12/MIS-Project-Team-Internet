json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :start_date, :end_date, :street_line1, :city, :state, :zip,:country,:
  json.url event_url(event, format: :json)
end

name"
    t.string   "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "street_line1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "cancelled"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false