module Jekyll
  class IconTag < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super

      @name = nil
      @type = "font"
      @size = 16
      @class = nil
      @hidden = false

      params = input.downcase.split("|")
      params = params.collect(&:strip)

      @name = params[0]

      params.shift(1)

      params.each { |value|
        ary = value.split(":")
        ary = ary.collect(&:strip)
        self.instance_variable_set("@#{ary[0]}", ary[1])
      }

      @title = @name.gsub("-", " ").capitalize
      @tag = "i"

      if @class.nil? || @class.empty?
        @class = "bi bi-#{@name}"
      else
        @class = "bi bi-#{@name} #{@class}"
      end
    end

    def render(context)

      @baseurl = context.registers[:site].config["baseurl"]
      @path = "#{@baseurl}/assets/bootstrap-icons/"
      @dir = File.join(context.registers[:site].config["source"], "assets", "bootstrap-icons")

      icon = ""

      case @type

      when "font"
        icon = "<i aria-label=\"#{@title}\" role=\"img\" class=\"#{@class}\"></i>"

      when "image"
        @tag = "img"
        icon = "<img alt=\"#{@title}\" role=\"img\" class=\"#{@class}\" width=\"#{@size}\" height=\"#{@size}\" src=\"#{@path}#{@name}.svg\">"

      when "sprite"
        @tag = "svg"
        icon = "<svg aria-label=\"#{@title}\" role=\"img\" focusable=\"false\" class=\"#{@class}\" width=\"#{@size}\" height=\"#{@size}\" fill=\"currentColor\"><use xlink:href=\"#{@path}bootstrap-icons.svg##{@name}\"/></svg>"

      when "embedded"
        @tag = "svg"
        source = context.registers[:site].config["source"]
        filename = File.join(@dir, "#{@name}.svg")
        icon = File.read(filename)
          .split(/[\r\n]/)
          .collect(&:strip)
          .join
          .gsub("<svg", "<svg focusable=\"false\"")
          .gsub("<svg", "<svg role=\"img\"")
          .gsub("<svg", "<svg aria-label=\"#{@title}\"")
          .gsub("class=\"bi bi-#{@name}\"", "class=\"#{@class}\"")
          .gsub("width=\"16\"", "width=\"#{@size}\"")
          .gsub("height=\"16\"", "height=\"#{@size}\"")

      end

      unless @hidden == false
        icon = icon.gsub("<#{@tag}", "<#{@tag} aria-hidden=\"true\"")
      end

      icon
    end
  end
end

Liquid::Template.register_tag("icon", Jekyll::IconTag)
