module ApplicationHelper

  def current_user_subscribed?
    user_signed_in? && current_user_subscribed?
  end

  def admin?
    user_signed_in? && current_user_admin?
  end

  def subscribed?
    user_signed_in? && current_user.subscribed?
  end

      def titlize(str)
        str.gsub('_', ' ').capitalize
      end
end
