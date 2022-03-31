# frozen_string_literal: true

json.extract! publication_card, :id, :url, :interval, :count, :title, :text, :status, :created_at, :updated_at
json.url publication_card_url(publication_card, format: :json)
