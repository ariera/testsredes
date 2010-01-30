# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def doctype_declaration
    '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
  end


  def default_style_sheets
    stylesheet_link_tag('blueprint/screen') <<
    stylesheet_link_tag("basic.css")
  end

end
