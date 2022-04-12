rule ExampleRule

{
   strings:
       $a = "bar"
       $a2 = "foo"
       $a3 = "cow"
       $b = "hello"
       $b2 = "enterprise"
       $c = "world"
   condition:
       1 of them // equivalent to 1 of ($*)
}

all of them    | this will match files that have all of the strings
any of them    | this will match files that have at least one of the strings
all of ($a*)   | this will match files that have all of the strings in $a, $a2 and $a3
any of ($b*)   | this will match files that have any of the strings in $b and $b2
------Conditions can be
$a or $b
$a and $b
$a and $b and $c
($a and $b) or $c
($a and $b) or ($c and $d) not $e

Analysis
--------
get Strings to create rules:
                              strings <malicious_file_name>
                              cat <malicious_file_name>
get Hex to create rules:
This returns three columns: 
            The 1st column contains the offset inside the files where the hexadecimal occurs
            The 2nd returns the hexadecimal values inside the files 
            The 3rd is the ASCII representation of the hexadecimal characters at that offset
            
                              xxd <malicious_file_name>

Grep is another command that can be used to match a value inside a file. This can be used to see if a string inside one file occurs in another:

                              cat <second_malicious_file> | grep <string_from_first_malicious_file>





