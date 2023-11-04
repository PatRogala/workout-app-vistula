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
    "
      <div class='weight-diagram'>
        <span>#{user.weight - 1}</span>
        #{user.weight}
        <span>#{user.weight + 1}</span>
      </div>
    ".html_safe
  end
end
