#!/bin/bash

curl -s "https://web.archive.org/cdx/search/cdx?url=*.${1}/*&collapse=urlkey&output=text&fl=original" > scrape.txt && grep -E "https?://[^ ]+\.(zip|rar|7z|docx?|xlsx?|pptx?|pdf|json|txt|csv|log|xml|sql|yaml|yml|ini|cfg|conf|env|dat|bak|tar|gz|tgz|pem|key|crt|cer|pfx|db|sqlite|accdb|mdb|py|rb|php|js|java|cpp|sh|ps1|bat|cmd|dockerfile|tf|tfstate|kubeconfig)\b
" scrape.txt > file-matches.txt
