module Faux::Library::Text
  module Name
    DEFAULT = {
      :hyphenated => false,
      :has_middle => true,
      :full_middle_name => false
    }

    def full_name(*args)
      extract_options_from DEFAULT, *args
      first = @options[:first_name] || first_name(*args)
      middle = @options[:middle_name] || middle_name(*args)
      last = @options[:last_name] || last_name(*args)
      [first, middle, last].join(' ')
    end

    def first_name(*args)
      extract_options_from DEFAULT, *args
      male = Faux::Dictionary::Text::Name.male_first_names
      female = Faux::Dictionary::Text::Name.female_first_names
      case @options[:gender]
      when :male || 'male' then male
      when :female || 'female' then female
      else
        [male, female].sample
      end.sample
    end

    def last_name(*args)
      extract_options_from DEFAULT, *args
      unless @options[:hyphenated]
        Faux::Dictionary::Text::Name.last_names.sample
      else
        [Faux::Dictionary::Text::Name.last_names.sample,
          Faux::Dictionary::Text::Name.last_names.sample].join('-')
      end
    end

    def middle_name(*args)
      extract_options_from DEFAULT, *args
      unless @options[:has_middle]
        Faux::Dictionary::Text::Name.last_names.sample
      else
        ''
      end
    end
  end
end
