#!/usr/bin/env ruby
# frozen_string_literal: true
#
# Regenerate _sass/aemi/_syntax-highlighting.scss from Rouge's built-in
# github theme. Run after upgrading Rouge:
#
#     bundle exec scripts/regen-syntax-css.rb > _sass/aemi/_syntax-highlighting.scss
#
# Outputs both light and dark modes scoped under prefers-color-scheme.
require "rouge"

def emit(mode)
  Rouge::Themes::Github.public_send("#{mode}!")
  body = Rouge::Themes::Github.render(scope: "  pre.highlight")
  puts "@media (prefers-color-scheme: #{mode}) {"
  puts body
  puts "}"
  puts
end

puts <<~HEADER
  /**
   * Syntax highlighting — verbatim Rouge `github` theme output.
   * Regenerate with: bundle exec scripts/regen-syntax-css.rb
   */
HEADER

emit(:light)
emit(:dark)

puts <<~FOOTER
  :not(pre) > code.highlighter-rouge,
  :not(pre) > code {
    background-color: var(--background-color-lighten);
    color: var(--text-color);
  }

  pre.highlight * {
    -webkit-font-feature-settings: "case" 0, "liga" 0, "dlig" 0;
    font-feature-settings: "case" 0, "liga" 0, "dlig" 0;
  }
FOOTER
