class HouseListing
  attr_reader :address, :asking_price, :bedroom_count, :bathroom_count, :square_footage, :listing_type, :listing_id, :year_built

  def initialize(listing_details)
    @address = listing_details[:address]
    @asking_price = listing_details[:asking_price]
    @square_footage = listing_details[:square_footage]
    @listing_type = listing_details[:listing_type]
    @listing_id = listing_details[:listing_id]
    @year_built = listing_details[:year_built]

    if listing_details[:bedroom_count] == nil
      @bedroom_count = 3
    else
      @bedroom_count = listing_details[:bedroom_count]
    end

    if listing_details[:bathroom_count] == nil
      @bathroom_count = 2
    else
      @bathroom_count = listing_details[:bathroom_count]
    end

    if listing_details[:active] == nil
      @active = true
    else
      @active = listing_details[:active]
    end

    if listing_details[:occupied] == nil
      @occupied = true
    else
      @occupied = listing_details[:occupied]
    end

  end

  def active?
    @active
  end

  def occupied?
    @occupied
  end
end
