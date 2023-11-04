module UsersHelper
  def gender_image(user)
    if user.male?
      image_tag "icons/male.svg", alt: "User gender icon", class: "icon"
    elsif user.female?
      image_tag "icons/female.svg", alt: "User gender icon", class: "icon"
    else
      image_tag "icons/user.svg", alt: "User gender icon", class: "icon"
    end
  end

  def weight_diagram(user)
    content_tag :div, class: "weight-diagram" do
      content_tag :span do
        "#{user.weight - 1}"
      end
      "#{user.weight}"
      content_tag :span do
        "#{user.weight + 1}"
      end
    end
  end
end
