# frozen_string_literal: true

json.array! @citizens, partial: 'citizens/citizen', as: :citizen
