require 'rails_helper'

RSpec.describe Store, type: :model do
  subject do
    described_class.new(name: 'Anything', owner: 'Lorem ipsum')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a owner' do
    subject.owner = nil
    expect(subject).to_not be_valid
  end
end
