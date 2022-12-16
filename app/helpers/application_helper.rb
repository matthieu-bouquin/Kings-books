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
  def default_meta_tags
    {
      site: 'Kings-books',
      title: 'Kings-books',
      reverse: true,
      separator: '|',
      description: 'The best bookmark for your reading',
      keywords: 'reading, productivity, comfort',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') },
      ],
      og: {
        site_name: 'Kings-books',
        title: 'Kings-books',
        description: 'The best bookmark for your reading', 
        type: 'website',
        url: request.original_url,
      }
    }
  end
end
