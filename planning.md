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
