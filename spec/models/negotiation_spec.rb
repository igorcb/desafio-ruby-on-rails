require 'rails_helper'

RSpec.describe Negotiation, type: :model do

  describe "Associations" do
    it "belongs_to payment" do
      subject = described_class.reflect_on_association(:payment)
      expect(subject.macro).to eq :belongs_to
    end
    
    it "belongs_to store" do
      subject = described_class.reflect_on_association(:store)
      expect(subject.macro).to eq :belongs_to
    end
  end


  subject do
    payment = Payment.create(description: 'Anything', nature: 'Entrada', signal: '+')
    owner = 'Anything'
    store_str = 'Lorem ipsum'
    store = Store.create_with(name: store_str, owner: owner).find_or_create_by(name: store_str, owner: owner)
    described_class.new(payment_id: payment.id, store_id: store.id, cpf: '000.000.000-00', card: "1234****6678", date: Date.today, time: Time.now, price: 9.99)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a payment_id' do
    subject.payment_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a store_id' do
    subject.store_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a cpf' do
    subject.cpf = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a card' do
    subject.card = nil
    expect(subject).to_not be_valid
  end  

  it 'is not valid without a date' do
    subject.date = nil
    expect(subject).to_not be_valid
  end  

  it 'is not valid without a time' do
    subject.time = nil
    expect(subject).to_not be_valid
  end  

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end  

end