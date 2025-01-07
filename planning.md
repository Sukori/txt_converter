# Todo list and definitions
## Possible conversions
- .csv to .tsv
- reverse
- .csv to .json
- reverse
- .tsv to .json
- reverse
- .md to .html (might be limited. Take MKDOCS as reference)
- reverse (might be impossible due to too many markups. How to convert `<aside>`, `<nav>`, `<div>`, ... ???)
- .csv to .xlsx (not open source. can I achieve it?)
- reverse
- .csv to .ods
- reverse
- .ods to .xlsx (probably not as easy as it looks)
- reverse
- .md to .docx (not open source. can I achieve it?)
- reverse
- .md to .odt
- reverse
- .odt to .docx (probably not as easy as it looks)
- reverse
- .csv to any char separated values -> good challenge, but what file extension? Super annoying command to parse. Stick to standards and "have fun" later.

## Command format
### Idea 1
`tcvrt [input extension] <input file> [output extention] <output file>`

This implies:
- to check if the file extension matches the type flag
- to check if the input file exists (mandatory)
- to check if the output extension is specified (mandatory)
- to check if the output file is specified: (optional)
	- check it exists
		- if not, generate it
	- file exists: check if the given flag matches the actual file extension
	- file exists: do we overwrite or only append? (not clever for html, or table headers)
- if output not specified, generate `<input filename>.<output extension>`
	- If already exist, overwrite and pebcak -> I like that
- to handle errors:
	- wrong flags
	- types mismatches
	- non-supported input files (also no extension)
	- non-supported conversions
	- converting to the same type (do nothing) -> I like that
	- invalid command format

Seems overcomplicated and easy to bug.

## Idea 2
`tcvrt [input file].<extension> [output extension]`

This implies:
- to check if input file exists
- to autodetect the file extension
- to check if the file extension is supported
- to check if output extension flag exists
- to check if conversion is supported
- to generate `<input filename>.<newextension>` and write
	- if already exists, pebcak -> I like that
- to handle errors:
	- wrong flags
	- non-supported input files (also no extension)
	- non-supported conversions
	- converting to same type (do nothing) -> I liike that
	- invalid command format

One less error handle. Less questions. Less checks. Command is more compact, more natural. Don't care about already existing output file-> don't be the pebcak

