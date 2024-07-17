# frozen_string_literal: true

module Types
  class NoticeType < Types::BaseObject
    field :copyright, String, null: true
    field :copyright_url, String, null: true
    field :disclaimer_url, String, null: true
    field :feedback_url, String, null: true
  end
end
