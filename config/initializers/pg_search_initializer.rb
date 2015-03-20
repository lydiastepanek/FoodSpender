PgSearch.multisearch_options = {
  :ignoring => :accents,
  :using => {
    :tsearch => {
      :prefix => true,
      :dictionary => "english",
      :any_word => true
    }
  }
}
