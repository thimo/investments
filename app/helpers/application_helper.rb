module ApplicationHelper
  def full_title(page_title = "")
    base_title = "Investments"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def fa_class
    "fad"
  end
end
