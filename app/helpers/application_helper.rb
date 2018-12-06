module ApplicationHelper

  def current_user_subscribed?
    user_signed_in? && current_user.subscribed?
  end

  def admin?
    user_signed_in? && current_user.admin?
  end

  def subscribed?
    user_signed_in? && current_user.subscribed?
  end


  def tag_cloud(tags, classes)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / max.count * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end



      def titlize(str)
        str.gsub('_', ' ').capitalize
      end
end
