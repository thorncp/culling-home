class CraigslistIndexRowParser
  attr_reader :row

  def initialize(row)
    @row = row
  end

  def attributes
    {
      href: href,
      title: title,
      price: price,
      neighborhood: neighborhood,
      has_map: has_map,
    }
  end

  def href
    "http://sfbay.craigslist.org" + row.css("a").attribute("href").value
  end

  def title
    row.css("a").text.strip
  end

  def price
    row.css(".price").text.strip.tr("$", "").to_i
  end

  def neighborhood
    row.css(".pnr small").text.gsub(/\A\s*[-\/(]|[-\/)]\s*\z/, '').strip
  end

  def has_map
    row.css(".maptag").any?
  end
end
