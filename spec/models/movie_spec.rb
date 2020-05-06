require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject { described_class.new(
    name: 'Lord of Rings',
    release_year: '2001',
  )}

  it 'is vaild with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid if release year is less than 1888' do
    subject.release_year = 1700
    expect(subject).to_not be_valid
  end
  
end
