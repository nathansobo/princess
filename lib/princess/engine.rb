require 'rails'

module Princess
  class Engine < Rails::Engine
    paths["vendor/assets"] = ["vendor/jasmine/lib", "vendor/jasmine/images"]

    initializer "enable assets" do |app|
      app.config.assets.paths << Rails.root.join('spec', 'assets', 'javascripts')
    end
  end
end
