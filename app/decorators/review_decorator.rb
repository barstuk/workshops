class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    "#{user.firstname.capitalize} #{user.lastname.capitalize}"
  end
end
