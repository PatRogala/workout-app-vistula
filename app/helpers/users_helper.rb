module UsersHelper
  def gender_image(user)
    if user.male?
      image_tag "icons/male.svg", alt: "User gender icon", class: "w-[50px] h-[50px] m-5"
    elsif user.female?
      image_tag "icons/female.svg", alt: "User gender icon", class: "w-[50px] h-[50px] m-5"
    else
      image_tag "icons/user.svg", alt: "User gender icon", class: "w-[50px] h-[50px] m-5"
    end
  end

  def weight_diagram(user)
    "
      <div class='font-bold text-black bg-[#b3f180] px-5 py-5 rounded-full mt-5'>
        <span class='font-semibold text-[12px]'>#{user.weight - 1}</span>
        #{user.weight}
        <span class='font-semibold text-[12px]'>#{user.weight + 1}</span>
      </div>
    ".html_safe
  end

  def height_diagram(user)
    "
    <div class='text-lg bg-[#b3f180] px-5 py-5 rounded-full text-black font-bold mt-5'>
      <div class='mb-2 font-semibold text-[12px]'>#{user.height + 5}</div>
      <div class='mb-2'>#{user.height}</div>
      <div class='mb-2 font-semibold text-[12px]'>#{user.height - 5}</div>
    </div>
  ".html_safe
  end
end
