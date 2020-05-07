require 'rails_helper'

RSpec.describe Country, type: :model do
  subject { described_class.new(
    name: 'Japan'
  )}

  it 'is vaild with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
