require_relative 'dancer'

describe Dancer do
  let(:dancer) { Dancer.new(["Mikhail Baryshnikov", "Anna Pavlova"]) }

it "twirls" do
  expect(dancer.pirouette).to eq "*twirls*"
end

it "bows to a partner" do
  expect(dancer.bow).to eq "*bows*"
end

it "can add parters to the dance card queue" do
  dancer.queue_dance_with("Mikhail Baryshnikov")
  expect(dancer.card).to eq ["Mikhail Baryshnikov"]
  dancer.queue_dance_with("Anna Pavlova")
  expect(dancer.card).to eq ["Mikhail Baryshnikov", "Anna Pavlova"]
end

it "can start the next dance in the queue" do
  dancer.queue_dance_with("Mikhail Baryshnikov")
  dancer.queue_dance_with("Anna Pavlova")
  expect(dancer.begin_next_dance).to eq "Now dancing with Mikhail Baryshnikov."
  expect(dancer.card).to eq ["Anna Pavlova"]
end

it "wave to mom" do
  expect(dancer.wave).to eq "Hi Mom!"
end

end
