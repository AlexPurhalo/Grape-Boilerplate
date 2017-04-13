class Examples < Grape::API
  resources :examples do
    get '/:example_id' do
      example_record = ExampleService.new(params[:example_id]).show_record

      show_example(example_record)
    end
  end
end