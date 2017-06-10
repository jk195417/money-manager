module NavHelper
  def nav_li(text, path, css_class: '', method: :get, inner_class: '')
    # 被選中的巡覽列的class會加入active 做出區別的特效
    # navbar中的li tag 加入class="active"
    active = request.path == path ? 'active' : ''
    css_class += ' nav-item'
    content_tag :li, link_to(text, path, method: method, class: "nav-link #{active} #{inner_class}"), class: "#{active} #{css_class}"
  end

  def account_nav
    html = []
    if user_signed_in?
      html << nav_li(t('record.all'), records_path)
      html << nav_li(t('sign_out'), destroy_user_session_path, method: :delete)
    else
      html << nav_li(t('sign_in'), new_user_session_path)
      html << nav_li(t('sign_up'), new_user_registration_path)
    end
    html.join("\n").html_safe
  end
end
