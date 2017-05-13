
  describe Portal::Application, 'configuration' do
    let(:config) { described_class.config }

    [:password, :social_security_number].each do |param|
      it "filters #{param.inspect} from logs" do
        config.filter_parameters.should include(param)
      end
    end
  end
