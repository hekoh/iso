echo $(ls | tr '[:upper:] [:lower:]' '[:lower:] [:upper:]' | tr -d 'a,A') 
