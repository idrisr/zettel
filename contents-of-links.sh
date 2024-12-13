file_name=$1
search_string=$2

rg --replace '$1.md' \
--ignore-case \
--only-matching \
--no-filename "\[\[(.+?)\]\]"  \
"${file_name}" | \
sort -ur  | \
tr "\n" "\0" | \
xargs -0 rg --column --ignore-case --line-number --no-heading "$search_string"
