module Landable
  module Traffic
    class DeviceType < ActiveRecord::Base
      include Landable::TableName

      lookup_by :device_type, cache: 50, find_or_create: true

      has_many :attributions
    end
  end
end
