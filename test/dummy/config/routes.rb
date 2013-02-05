Rails.application.routes.draw do
  mount BigosLocationBox::Engine => "/bigos_location_box"
  root :to=>"test#index"
end
