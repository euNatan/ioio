Trestle.resource(:items) do
  menu do
    item :items, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :collection_id
    column :user_id
    column :status_id
    column :code
    column :descriprion
    column :photos do |img|
      image_tag img
    end
    column :created_at, align: :center
    actions
  end



  # Customize the form fields shown on the new/edit views.
  #
  form do |item|
    text_field :collection_id
    text_field :user_id
    collection_select :status_id, Status.all, :id, :name, { label: "Status" }
    text_field :code
    text_field :descriprion
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
  #   params.require(:item).permit(:name, ...)
  # end
end
