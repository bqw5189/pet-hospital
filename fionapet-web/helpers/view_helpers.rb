module ViewHelpers
  def page(title, id)
    @page_id = id
    @page_title = title;
    content_for :title do
      title
    end
  end

  def launcher_active(page)
    @page_id == page ? {class:'active'} : {}
  end
end
