module ApplicationHelper
  def title(content)
    content_for :title, content
  end

  def nav_link_to(content, url)
    klass = request.path.include?(url) ? "active" : nil
    content_tag :li, class: klass do
      link_to content, url
    end
  end

  def icon(name)
    content_tag :span,
                "",
                class: "glyphicon glyphicon-#{name}",
                "aria-hidden" => true
  end

  def alert_class_for(id)
    case id
    when "notice"
      "alert-success"
    when "error"
      "alert-danger"
    else
      "alert-info"
    end
  end
end
