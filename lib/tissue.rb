require "tissue/version"
# require 'activesupport/configurable'

module Tissue
  include ActiveSupport::Configurable
end

require "tissue/railtie"