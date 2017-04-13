module ExampleHelper
  def show_example(example_record)
    @example = example_record

    render rabl: 'example'
  end
end