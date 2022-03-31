# frozen_string_literal: true

json.array! @publication_cards, partial: 'publication_cards/publication_card', as: :publication_card
