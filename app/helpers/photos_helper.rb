module PhotosHelper

	def tags(tag_list)
  markup = ""
  tag_list.each do |tag|
    markup += content_tag(:span, tag, :class => "tag")
  end
  raw(markup)
end

end
