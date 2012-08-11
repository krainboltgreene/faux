module Faux::Library::Name
  DEFAULTS = {
    hyphenated: false,
    has_middle: true,
    full_middle: false,
    defaulted: true
  }

  def full_name(options)
    options = options = {} ? DEFAULTS.dup.merge!(options): DEFAULTS
    first = options[:first_name] || first_name(options)
    middle = options[:middle_name] || middle_name(options) || ''
    last = options[:last_name] || last_name(options)
    first + ' ' + middle + ' ' + last
  end

  def first_name(options)
    options = DEFAULTS.dup.merge! options unless options[:defaulted]
    case options[:gender]
      when :male then male_first_names
      when 'male' then male_first_names
      when 'm' then male_first_names

      when :female then female_first_names
      when 'female' then female_first_names
      when 'f' then female_first_names

      else male_first_names + female_first_names
    end.sample
  end

  def last_name(options)
    options = DEFAULTS.dup.merge! options unless options[:defaulted]
    unless options[:hyphenated]
      random_last_name
    else
      random_last_name + '-' + random_last_name
    end
  end

  def middle_name(options)
    options = DEFAULTS.dup.merge! options unless options[:defaulted]
    if options[:full_middle]
      random_last_name
    else
      random_last_name[0] + '.'
    end if options[:has_middle] || options[:full_middle]
  end

  private

  def male_first_names
    Faux::Dictionary::Name.male_first_names
  end

  def female_first_names
    Faux::Dictionary::Name.female_first_names
  end

  def random_last_name
    Faux::Dictionary::Name.last_names.sample
  end
end
