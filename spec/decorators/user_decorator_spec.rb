require 'spec_helper'

describe UserDecorator do

  let(:user) { described_class.new(build(:user, firstname: 'John', lastname: 'Doe')) }

  describe '#full_name' do
    it 'displays user fullname' do
      expect(user.full_name).to eq 'John Doe'
    end
  end
end
