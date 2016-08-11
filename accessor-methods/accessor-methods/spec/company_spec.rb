require_relative "../company"

describe Company do
  let(:company) { Company.new("Macrohard") }

  it "has a readable company name" do
    expect(company.company_name).to eq("Macrohard")
  end

  it "has a writable company name" do
    expect { company.company_name = "Orange" }.to change { company.company_name }.to "Orange"
  end

  it "has writable employees" do
    expect(company.add_employee("Jane Doe")).to eq ["Jane Doe"]
  end

  it "has a readable employee array" do
    company.add_employee("Jane Doe")
    expect(company.employees).to eq ["Jane Doe"]
  end
end
