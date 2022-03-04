module Trestle
  module GoodJob
    class Engine < ::Rails::Engine
      config.assets.precompile << "trestle/good_job.css"
    end
  end
end
