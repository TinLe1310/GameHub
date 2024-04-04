ActiveAdmin.register Game do
  permit_params :title, :release_date, :official_store_price, :key_store_price, genre_ids: []

  remove_filter :image_attachment, :image_blob

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : ""
    end
    f.actions
  end
end