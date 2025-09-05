#!/usr/bin/bash

output=notes.txt

touch "$output"

add_note() {
  echo "Enter you're note: "
  read note
  echo "$note" >> "$output"
}

list_notes() {
  echo "================= YOUR NOTES ====================="
  nl -w1 -s "." "$output"
  echo "=================================================="
}

search_notes() {
  echo "================== Results ======================="
  read term
  grep -i $term $output || echo "The term was not found"
}


delete_note() {
  list_notes
  read num
  sed -i "${num}d" $output
  echo "Deleted"
}

while true; do
echo "========== Notes ==============="

  select option in Add List Search Delete Exit;
  do
    case $REPLY in
     1) add_note ;;
     2) list_notes ;;
     3) search_notes ;;
     4) delete_note ;;
     *) echo "NOT A RESPONSE" ;;
    esac
    break
  done
done


