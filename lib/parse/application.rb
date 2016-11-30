# encoding: utf-8
module Parse
  # Parse Application
  # https://parse.com/docs/rest/guide/#config
  class Application
    def self.config(client = nil)
      client ||= Parse.client
      client.request(Parse::Protocol.config_uri)['params']
    end
  end
end
