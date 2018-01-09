require "jekyll"

module JekyllSiteConfig
  def self.set_config(name, data)
    _render_document = Jekyll::Renderer.instance_method(:render_document)
    Jekyll::Renderer.send(:define_method, "render_document") do
      self.site.config[name] = data
      _render_document.bind(self).()
    end
    data
  end

  def self.get_config(name)
    Jekyll.configuration({})[name]
  end
end
