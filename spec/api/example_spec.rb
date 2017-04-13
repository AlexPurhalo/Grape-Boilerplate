require 'helper_spec'

describe 'GET user' do
  before do
    Examples.before { env['api.tilt.root'] = 'app/views' }
    Example.create(name: 'record name')
  end

  let (:example) { Example.where(name: 'record name').first }

  before { get "/examples/#{example.id}" }

  describe 'sanity test' do
    let(:response) { { id: example.id, name: example.name }.to_json }

    it 'shows example attributes' do
      expect(last_response.status).to eq 200
      expect(last_response.body).to include response
    end
  end
end