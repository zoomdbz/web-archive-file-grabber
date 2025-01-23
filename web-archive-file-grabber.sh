#!/bin/bash

curl -s "https://web.archive.org/cdx/search/cdx?url=*${1}/*&collapse=urlkey&output=text&fl=original" > scrape.txt && grep -Eo "\.(zip|rar|7z|docx?|xlsx?|pptx?|pdf|json|txt|csv|log|xml|sql|yaml|yml|ini|cfg|conf|bat|ps1|sh|php|rb|py|java|c|cpp|cs|rtf|dat|bak|tar|gz|pem|key|cert|pfx|db|mdb|sqlite|accdb)\b" scrape.txt > file-matches.txt
