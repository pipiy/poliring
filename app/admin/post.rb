ActiveAdmin.register Post do
  form do |f|
    f.inputs "Details" do
      f.input :image
      f.input :video
      f.input :title
      f.input :content
    end
    f.actions
  end
end
