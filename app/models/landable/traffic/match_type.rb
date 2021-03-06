module Landable
  module Traffic
    class MatchType < ActiveRecord::Base
      include Landable::TableName

      lookup_by :match_type, cache: 50, find_or_create: true

      has_many :attributions
    end
  end
end
