module Jekyll
  class IconTag < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super

      @name = nil
      @type = "font"
      @size = 16
      @class = nil
      @aria_hidden = false

      params = input.downcase.split("|")
      params = params.collect(&:strip)

      @name = params[0]

      params.shift(1)

      params.each { |value|
        ary = value.split(":")
        ary = ary.collect(&:strip)
        self.instance_variable_set("@#{ary[0]}", ary[1])
      }
    end

    def render(context)
      path = "#{context.registers[:site].config["baseurl"]}/assets/bootstrap-icons/"
      title = @name.gsub("-", " ").capitalize
      icon = ""

      case @type

      when "font"
        icon = "<i aria-label=\"#{title}\" class=\"bi bi-#{@name}\"></i>"
        unless @class.nil? || @class.empty?
          icon = icon.gsub("class=\"bi", "class=\"#{@class} bi")
        end
        unless @aria_hidden == false
          icon = icon.gsub("<i", "<i aria-hidden=\"true\"")
        end

      when "image"
        icon = "<img alt=\"#{title}\" src=\"#{path}#{@name}.svg\" width=\"#{@size}\" height=\"#{@size}\">"
        unless @class.nil? || @class.empty?
          icon = icon.gsub("<img", "<img class=\"#{@class}\"")
        end
        unless @aria_hidden == false
          icon = icon.gsub("<img", "<img aria-hidden=\"true\"")
        end

      when "sprite"
        icon = "<svg aria-label=\"#{title}\" role=\"img\" width=\"#{@size}\" height=\"#{@size}\" fill=\"currentColor\" class=\"bi\"><use xlink:href=\"#{path}bootstrap-icons.svg##{@name}\"/></svg>"
        unless @class.nil? || @class.empty?
          icon = icon.gsub("class=\"bi\"", "class=\"bi #{@class}\"")
        end
        unless @aria_hidden == false
          icon = icon.gsub("<svg", "<svg aria-hidden=\"true\"")
        end

      when "embedded"
        source = context.registers[:site].config["source"]
        filename = File.join("#{source}", "assets", "bootstrap-icons", "#{@name}.svg")
        icon = File.read(filename)
          .split(/[\r\n]/)
          .collect(&:strip)
          .join
          .gsub("width=\"16\"", "width=\"#{@size}\"")
          .gsub("height=\"16\"", "height=\"#{@size}\"")
        unless @class.nil? || @class.empty?
          original_class_value = "bi bi-#{@name}"
          class_value = "#{original_class_value} #{@class}"
          icon = icon.gsub("class=\"#{original_class_value}\"", "class=\"#{class_value}\"")
        end
        unless @aria_hidden == false
          icon = icon.gsub("<svg", "<svg aria-hidden=\"true\"")
        end

      end

      icon
    end
  end
end

Liquid::Template.register_tag('icon', Jekyll::IconTag)
