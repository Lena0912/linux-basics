#!/bin/bash
echo "=== СИСТЕМНИЙ ЗВІТ ДЛЯ OLENA ==="
date
echo "--- Користувач: $USER ---"

echo "1. Вільне місце на диску:"
df -h | grep "/$"

echo "2. Оперативна пам'ять
 (MB):"
free -m | grep "Mem"

echo "3. Статус мережі:"
ping -c 1 google.com > /dev/null && echo "Інтернет: ПРАЦЮЄ" || echo "Інтернет: ПОМИЛКА"

echo "=== КІНЕЦЬ ЗВІТУ ==="
