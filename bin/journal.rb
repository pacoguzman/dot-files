#!/usr/bin/env ruby --disable-gems

# Stolen from my friend afcapel -> https://gist.github.com/afcapel/5a1ff812e9b637519a83147b0a745851

require "date"
require "fileutils"

JOURNAL_DIR = File.expand_path("~/Google Drive/writing/journal")

FileUtils.mkdir_p(JOURNAL_DIR)

now = DateTime.now
date = now.strftime("%F")

entry = "#{JOURNAL_DIR}/#{date}.md"
new_entry = !File.exist?(entry)

open(entry, "a") do |f|
  if new_entry
    f << "# #{now.strftime("%A %d %B %Y %H:%M")}\n\n"
  else
    f << "\n\n"
    f << "# #{now.strftime("%H:%M")}\n\n"
  end
end

`mine "#{entry}"`
