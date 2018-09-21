module Totem
  # Config types
  module ConfigTypes
    @@adapters = {} of String => Adapter
    @@aliases = {} of String => String

    def self.register_adapter(name : String, adapter : Adapter)
      @@adapters[name] = adapter
    end

    def self.register_alias(shortcut : String, name : String)
      @@aliases[shortcut] = name
    end

    def self.[](name : String)
      @@adapters[normalize(name)]
    end

    def self.has_keys?(name : String)
      keys.includes?(name)
    end

    def self.keys
      @@adapters.keys.concat(@@aliases.keys)
    end

    private def self.normalize(name : String)
      @@aliases.fetch(name, name)
    end

    # Adapter of config type
    abstract class Adapter
      abstract def read(raw : String | IO) : Hash(String, Totem::Any::Type)
      abstract def write(io : File, config : Config)
    end
  end
end

# auto requires non-external dependency adapters
require "./config_types/json"
require "./config_types/yaml"
