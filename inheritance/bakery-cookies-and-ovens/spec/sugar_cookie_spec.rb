require_relative "../sugar_cookie"

describe SugarCookie do
  let(:batch) { SugarCookie.new() }

  it "initializes to doughy status" do
    expect(batch.status).to eq :doughy
  end

  it "changes cookie status to almost_ready" do
    batch.almost_ready
    expect(batch.status).to eq :almost_ready
  end

  it "changes cookie status to ready" do
    batch.ready
    expect(batch.status).to eq :ready
  end

  it "changes cookie status to burned" do
    expect { batch.burned }.to change { batch.status }.to eq :burned
  end

  it "initializes with a batch size of 12" do
    expect(batch.batch_size).to eq 12
  end

  it "initializes with a baking time of 10 mins" do
    expect(batch.baking_time).to eq 10
  end
end
