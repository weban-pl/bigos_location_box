module BigosLocationBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)


      def include_js
        insert_into_file "app/assets/javascripts/application.js", :after => %r{//= require +['"]?jquery_ujs['"]?} do
		      "\n//= require 'bigos_contact_box/bigos_location_box'"
		    end
      end

      def include_routes
        route 'mount BigosContactBox::Engine => "/bigos_contact_box"'
      end

      def create_settings
        Setting["#{BigosContactBox.name}.latitude"] = ""
        Setting["#{BigosContactBox.name}.longitude"] = ""
        Setting["#{BigosContactBox.name}.location_name"] = "Location name"
        Setting["#{BigosContactBox.name}.redirect_path"] = ""
        Setting["#{BigosContactBox.name}.map_zoom"] = ""
        Setting["#{BigosContactBox.name}.marker_icon_src"] = ""
        im = BigosApp::InstalledModule.find_or_create_by_name(BigosLocationBox.name)
        im.page_element =  BigosApp::BigosLocationContactBoxElement.name
        im.save
      end

    end
  end
end
