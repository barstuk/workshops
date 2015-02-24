class UserDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  def full_name
    "#{user.firstname.capitalize} #{user.lastname.capitalize}"
  end

  def last_reviews
    object.reviews.order(created_at: :desc).limit(5).map do |review|
      h.content_tag(:tr) do
        h.concat h.content_tag(:td, review.content)
        h.concat h.content_tag(:td, review.rating)
        h.concat h.content_tag(:td, h.link_to(review.product.title, category_product_path(review.product.category, review.product) ))
        h.concat h.content_tag(:td, review.created_at.strftime("%d-%m-%y"))
      end
    end.join("  ")
  end
end
