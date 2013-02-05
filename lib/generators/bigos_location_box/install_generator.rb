module BigosLocationBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)


      def include_js
        insert_into_file "app/assets/javascripts/application.js", :after => %r{//= require +['"]?jquery_ujs['"]?} do
		      "\n//= require 'bigos_location_box/bigos_location_box'"
		    end
      end

      def include_routes
        route 'mount BigosLocationBox::Engine => "/bigos_location_box"'
      end

      def create_settings
        Setting["#{BigosLocationBox.name}.latitude"] = ""
        Setting["#{BigosLocationBox.name}.longitude"] = ""
        Setting["#{BigosLocationBox.name}.location_name"] = "Location name"
        Setting["#{BigosLocationBox.name}.map_zoom"] = ""
        Setting["#{BigosLocationBox.name}.marker_icon_src"] = ""
        im = BigosApp::InstalledModule.find_or_create_by_name(BigosLocationBox.name)
        im.page_element =  BigosApp::BigosLocationBoxElement.name
        im.save
      end

    end
  end
end
