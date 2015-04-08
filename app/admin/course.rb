ActiveAdmin.register Course do

  menu            priority: 6,  label: 'Courses'

  permit_params   :identifier, :name, :description, :term

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input         :identifier
      f.input         :name
      f.input         :description
      f.input         :term,  as: :select, collection: Course::TERMS, prompt: 'Select a term'
      f.actions
    end
  end

end
