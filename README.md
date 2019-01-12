# savage_worlds_character_sheet

## Overview

A Savage Worlds character sheet written in HTML5, w3.css and JavaScript.

## How to use

Using the existing [Character Data](character_data/phillip_dudley_character_data.json),
copy and edit the JSON to match what the new character should be and save the JSON
file named after the character. The name of the file must be unique, but doesn't
impact the outcome of the generated character sheet.

Then run the `generate_sheets.rb` script, which is just a Ruby script that runs
ERB and outputs a fully templated HTML file. The usage is as follows

```bash
# ruby generate_sheets.rb [path/to/character_data.json]
ruby generate_sheets.rb character_data/phillip_dudley_character_data.json
```

The resulting Character sheet will be saved in `character_sheets` which will
container both the Mobile result, and desktop result. These files can then be
placed and served by a web server, and displayed in a desktop or mobile web
browser.

## More notes

I was originally using the actual character sheet and making it all designed
exactly like the character sheet, but I always ran into problems with it resizing
properly and being readable. So I decided to make two templates and share them.

## Future Plans

I do plan on adding an actual character information entry page, and attempt to
have it POST to a backend web server, or just have it save the web page as a new
character, and it should have all of its updated pieces. We'll see. `/shrug`.