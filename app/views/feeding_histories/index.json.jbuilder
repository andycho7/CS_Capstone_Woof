json.feeding_histories do
  json.array! @feeding_histories, partial: 'feeding_histories/feeding_history', as: :feeding_history
end
