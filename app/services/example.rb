class ExampleService
  def initialize(example_id)
    @example_id = example_id
  end

  def show_record
    Example[@example_id]
  end
end