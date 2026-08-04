#!/bin/bash

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
        var=$(echo $var | base64)
        
        # "$var" == *"$value"* --> Check if the variable contains the value as a substring.
        # ${#var} -gt 113450 --> Check if the length of the variable is greater than 113450 characters.
        if [[ "$var" == *"$value"* && ${#var} -gt 113450 ]]; then
            # "${var: -19}" --> Due to a hint, extract the last 19 characters of the variable.
            # Hint: "Therefore, our final answer might only be 19 characters long."
            echo "${var: -19}"
        else
            :
        fi
done