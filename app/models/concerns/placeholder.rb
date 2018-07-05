module Placeholder
  extend ActiveSupport::Concern

  self.image_generator(width, height)
    "http://via.placeholder.com/#{width}x#{height}"
  end
end
