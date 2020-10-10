module IconHelper
  include FontAwesome::Sass::Rails::ViewHelpers

  def icon_fw(style, name, text=nil, html_options={})
    text, html_options = nil, text if text.is_a?(Hash)

    if html_options.key?(:class)
      html_options[:class] = "fa-fw #{html_options[:class]}"
    else
      html_options[:class] = "fa-fw"
    end

    icon(style, name, text, html_options)
  end
end
