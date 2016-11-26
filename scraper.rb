#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

sparq = 'SELECT ?item WHERE { ?item wdt:P39 wd:Q%s . }'
ids = EveryPolitician::Wikidata.sparql(sparq % 20081432)
raise "No ids" if ids.empty?

EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
