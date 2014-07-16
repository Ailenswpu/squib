module Squib
  class Deck
    def fontify (font)
      font
    end

    def font(type: 'Arial', size: 12, **options)
    end

    def set_font(type: 'Arial', size: 12, **options)
    end

    def text(range: :all, str: '', font: :use_set, x: 0, y: 0, **options)
      range = rangeify(range)
      str = [str] * @cards.size unless str.respond_to? :each
      font = fontify(font)
      range.each do |i|
        cards[i].text(str[i], font, x, y, options)
      end
    end

  end
end