echo "Mostrar el nombre del usuario con más vocales"
cat /etc/passwd | cut -f1 -d: | xargs -I{} bash -c "echo -n '{} '; echo {} | grep -o [aeiouAEIOU] | wc -l" | sort -k2n -t' ' | tail -1 | cut -f1 -d' '

echo "Mostrar el nombre del usuario con más vocales versión que saca varios usuarios si tienen el máximo"
cat /etc/passwd | cut -f1 -d: | xargs -I{} bash -c "echo -n '{} '; echo {} | grep -o [aeiouAEIOU] | wc -l" | grep "^.* $(cat /etc/passwd | cut -f1 -d: | xargs -I{} bash -c "echo {} | grep -o [aeiouAEIOU] | wc -l" | sort -n | tail -1)$" | cut -f1 -d' '

