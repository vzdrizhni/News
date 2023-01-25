ActiveAdmin.register Post do
  permit_params :title, :body, :image

  form do |f|
    inputs 'Details' do
      input :title
      input :body
      input :image, as: :file, label: 'Создать Статью'
    end
    f.actions
  end
end
