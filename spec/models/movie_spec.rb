require 'rails_helper'

RSpec.describe Movie, type: :model do
  director = Director.create(name: 'An Li') 
  user = User.create(email: 'User@gmail.com', password: 'password') 
  country = Country.create(name: 'Australia') 
  subject { described_class.new(
    name: 'Lord of Rings',
    release_year: 2001,
    director_id: 1,
    country_id: 1,
    user_id: 1 
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

  it 'belongs to a User' do
    relation = Movie.reflect_on_association(:user)
    expect(relation.macro).to eql(:belongs_to)
  end
  
end
