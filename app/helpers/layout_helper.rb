# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally
module LayoutHelper
  def title(page_title, show_title = true)
     content_for(:title) { page_title }
  end

  def show_title?
    @show_title
  end

  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:js) { javascript_include_tag(*args) }
  end
end
