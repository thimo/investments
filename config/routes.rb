# frozen_string_literal: true

Rails.application.routes.draw do
  get "pages/home"

  authenticate :user do
    resource :dashboard
  end
end
