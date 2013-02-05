require "bigos_location_box/engine"
require "bigos_settings"

module BigosLocationBox
  module Controllers
    autoload :Helpers, 'bigos_location_box/controllers/helpers'
  end

  def self.setup
    include_helpers
    yield self
  end

  # Include helpers to AC and AV.
  def self.include_helpers
    ActiveSupport.on_load(:action_controller) do
    end

    ActiveSupport.on_load(:action_view) do
      include BigosLocationBox::Controllers::Helpers
    end
  end
end
