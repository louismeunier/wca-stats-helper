## WCA stats helper

[![Build Status](https://www.travis-ci.com/louismeunier/wca-stats-helper.svg?branch=main)](https://www.travis-ci.com/louismeunier/wca-stats-helper)

A "pseudo-api" wrapper of the WCA SQL export (available [here](https://www.worldcubeassociation.org/results/misc/export.html)). It should be noted that this is heavily inspired by https://github.com/jonatanklosko/wca_statistics, though with different intentions.

This was created as a way to easily get the would-be rank of any time of any event. It may be better expanded in the future to deal with continental/country rankings and perhaps other events.

### Usage
Make a GET request to https://louismeunier.github.io/wca-stats-helper/rank/:type/:event.json where `type` is either singles or averages, and `event` is any valid WCA event ID.
#### Warning
This request returns a rather large JSON file, particullarly for 333, pyram, and 222, with /singles/333.json being about 17 megabytes. 

I'm working on paginating the JSON files so it only returns sections of each applicable request, but this is still in progress.

#### Example
```
curl https://louismeunier.github.io/wca-stats-helper/rank/averages/222.json > 222singles.json
```
This would save the 2x2 averages JSON file to a local file named 222singles.json. You can also just visit the link in a browser, but it may lag out the browser/your computer, so be cautious. 

### Disclaimer
> This information is based on competition results owned and maintained by the World Cube Assocation, published at https://worldcubeassociation.org/results as of January 3, 2021.
