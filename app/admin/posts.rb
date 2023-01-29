ActiveAdmin.register Post do
  permit_params :title, :content_text, :image

  form do |f|
    inputs 'Details' do
      input :title
      input :content_text, as: :quill_editor
      input :image, as: :file, label: 'Прикрепить изображение'
    end
    f.actions
  end
end
