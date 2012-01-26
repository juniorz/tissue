require 'cells'

module Tissue
  class Railtie < Rails::Railtie

    config.after_initialize do |app|
      Cells.setup do |config|
        Rails::Engine::Railties.engines.each do |e|
          ::Rails.logger.debug "[tissue] Checking cell on #{e.class}" if Tissue.config.debug

          e.paths['app/cells'] || e.paths.add('app/cells')  
          cell_path = e.paths["app/cells"].first

          next unless File.directory?(cell_path)
          ::Rails.logger.debug "[tissue] * found cells at #{cell_path}" if Tissue.config.debug
          Cell::Base.append_view_path e.paths["app/cells"].existent_directories
        end
      end
    end

  end
end