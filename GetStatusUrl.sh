curl -I https://habr.ru 2>/dev/null | head -n 1 | cut -d$' ' -f2
