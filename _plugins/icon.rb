module Jekyll
  class IconTag < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super

      @name = nil
      @title = nil
      @type = "font"
      @size = 16
      @class = nil
      @aria_hidden = false
      @path = nil

      params = input.downcase.split("|")
      params = params.collect(&:strip)

      @name = params[0]
      @title = @name.gsub("-", " ").capitalize

      params.shift(1)

      params.each { |value|
        ary = value.split(":")
        ary = ary.collect(&:strip)
        self.instance_variable_set("@#{ary[0]}", ary[1])
      }
    end

    def render(context)
      baseurl = context.registers[:site].config["baseurl"]
      @path = "#{baseurl}/assets/bootstrap-icons/"

      icon = ""

      case @type

      when "font"
        class_attr = "bi bi-#{@name}"
        unless @class.nil? || @class.empty?
          class_attr += " #{@class}"
        end
        icon = "<i class='#{class_attr}' title='#{@title}'></i>"

      when "image"
        icon = "<img src='#{@path}#{@name}.svg' alt='#{@title}' width='#{@size}' height='#{@size}'"
        unless @class.nil? || @class.empty?
          icon += " class='#{@class}'"
        end
        icon += ">"

      when "sprite"
        class_attr = "bi"
        unless @class.nil? || @class.empty?
          class_attr += " #{@class}"
        end
        icon = "<svg class='#{class_attr}' role='img' aria-label='#{@title}' width='#{@size}' height='#{@size}' fill='currentColor'><use xlink:href='#{@path}bootstrap-icons.svg##{@name}'/></svg>"

      when "embedded"
        source = context.registers[:site].config["source"]
        filename = File.join("#{source}", "assets", "bootstrap-icons", "#{@name}.svg")
        icon = File.read(filename).strip

      end

      icon
    end
  end
end

Liquid::Template.register_tag('icon', Jekyll::IconTag)
