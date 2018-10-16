Trestle.resource(:collections) do
  menu do
    item :collections, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :description
    column :image do |img|
      image_tag img.image.thumb
    end
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |collection|
    text_field :name
    text_area :description
    text_field :stock
    file_field :image, as: :file, input_html: { multiple: true }
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:collection).permit(:name, ...)
  # end
end
