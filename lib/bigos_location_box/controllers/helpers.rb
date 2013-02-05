module BigosLocationBox
  module Controllers
    module Helpers
      extend ActiveSupport::Concern

      def bigos_contact_box_widget ()
        render :partial=>"bigos_location_box/module/widget"
      end
    end
  end
end
