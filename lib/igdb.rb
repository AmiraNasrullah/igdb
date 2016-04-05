require 'require_all'
require_rel 'igdb'

module Igdb
  def self.connect(api_key)
    Igdb::Configuration::Api.instance.tap do |api|
      api.connect(api_key)
    end
  end
end
