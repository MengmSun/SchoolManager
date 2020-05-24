Rails.application.routes.draw do
  root 'welcome#welcome'

  resources :campuses do
    resources :departments
  end
  resources :course_selections
  resources :open_courses
  resources :courses
  resources :status_changes
  resources :grade_changes
  resources :department_changes
  resources :teachers do
    resources :open_courses
  end
  resources :students do
    resources :grade_changes
    resources :department_changes
    resources :course_selections
  end
  resources :people
  resources :clazzes do
    resources :students
  end
  resources :departments do
    resources :clazzes
    resources :teachers
    resources :courses
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
