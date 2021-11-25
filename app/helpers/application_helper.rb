module ApplicationHelper
  def container_begin
    raw "<br/><div class='container'>"
  end

  def container_end
    raw "</div>"
  end

  def header_page(icon, title)
    raw "<div class='row'>
             <div class='col-sm-12 col-md-12 col-lg-12'>
                <h2><em class=\"#{icon}\"></em> &nbsp; #{title}</h2>
                <hr>
             </div>
          </div>"
  end

  def raw_row_col_begin
    raw '<div class="row"><div class="col-sm-12 col-md-12 col-lg-12">'
  end

  def raw_row_col_begin_card
    raw '<div class="row"><div class="col-sm-12 col-md-12 col-lg-12 patrimonial_card">'
  end

  def raw_row_col_end
    raw '</div></div>'
  end

  def can_do(resource, action)
    policy(resource).send(action) || @user&.tipo_usuario == 1
  end

  def can_do_show(resource, action, message)
    message if policy(resource).send(action) || @user&.tipo_usuario == 1
  end

  def back_list_admin(caption, my_route, my_class = '')
    caption = 'Volver a su lista de   administración' if caption.blank?
    link_to caption, my_route, class: my_class
  end

  def small_text(message)
    raw "<span class=\"help-block\"> #{message}</span>"
  end

  def imagen_random
    if Patrimonio.count <= 2
      id = Patrimonio.first.id
    else
      id = rand(Patrimonio.count) + 1
    end

    registro = Patrimonio.find(id)

    if registro.photo.key.nil?
      image_tag "default.jpg", class: "imagen_patrimonio"
    else
      cl_image_tag registro.photo.key, class: "imagen_patrimonio"
    end

  rescue StandardError
    image_tag "default.jpg", class: "imagen_patrimonio"
  end
end