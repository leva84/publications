# frozen_string_literal: true

class PublicationCard < ApplicationRecord
  has_many :messages
end
