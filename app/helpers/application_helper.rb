module ApplicationHelper

  def bootstrap_class_for_flash(type)
    case type
      when 'notice' then "alert-info"
      when 'success' then "alert-success"
      when 'error' then "alert-danger"
      when 'alert' then "alert-warning"
      when 'primary' then "alert-primary"
      when 'secondary' then "alert-secondary"
      when 'light' then "alert-light"
      when 'dark' then "alert-dark"
    end
  end
end
