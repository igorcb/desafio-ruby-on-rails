require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject do
    described_class.new(description: 'Anything', nature: 'Entrada', signal: '+')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a nature' do
    subject.nature = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a signal' do
    subject.signal = nil
    expect(subject).to_not be_valid
  end

end