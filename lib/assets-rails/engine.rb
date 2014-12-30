require 'rails/engine'

module Assets
  module Rails
    class Engine < ::Rails::Engine
      initializer 'assets-rails.precompile' do |app|
        app.config.assets.precompile += [ Proc.new { |path, fn| fn =~ /assets-rails\/vendor\/assets/ && !%w(.js .css).include?(File.extname(path)) } ]
      end
    end
  end
end