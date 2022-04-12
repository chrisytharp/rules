Introduction
Identifying malware is integral to understanding threats and avoiding infection; Yara is capable of scanning malicious files, designed specifically for this purpose. This series will expand on how to use Yara effectively and create rules to analyse malware samples and identify threats.

Hint
String sets

When creating the condition for the Yara rule there is some standard syntax we can use to match groups.

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

all of them | this will match files that have all of the strings
any of them | this will match files that have at least one of the strings
all of ($a*) | this will match files that have all of the strings in $a, $a2 and $a3
any of ($b*) | this will match files that have any of the strings in $b and $b2
Analysis
There are many ways you can analyse a malware sample in order to create effective and efficient Yara rules. The goal is to create Yara rules specific enough for the Yara engine to match malicious files but not to match legitimate files. This can be a difficult, time-consuming process for the researcher unless they know how to quickly search for meaningful data inside various files. Below are various commands you can use to aid in this process.

In Linux, a command called 'strings' can be used to return every ASCII string inside a file. This is the default behaviour; however, it is possible to view UNICODE strings and other sized character arrays using this command – you just need to pass the right switch to the command. An example of how to use this command is as follows:

strings <file_name>

Yara can also take hexadecimal characters inside rules and match them to malicious files. There are a number of different hex viewers shipped within Linux; however, a good command line tool to use is ‘xxd’. 

This returns three columns: the first contains the offset inside the files where the hexadecimal occurs, the second returns the hexadecimal values inside the files, and the third is the ASCII representation of the hexadecimal characters at that offset. An example of how to use this command is as follows:

xxd <file_name>

Below is an example of 'xxd' output, to view the hexadecimal content of a file:


You can also view contents of files using the 'cat' command, which can be used to look for strings of interest. An example of how to use this command is as follows:

cat <file_name>

Grep is another command that can be used to match a value inside a file. This can be used to see if a string inside one file occurs in another. An example of how to use this command is as follows:

cat <second_malicious_file> | grep <string_from_first_malicious_file>

Data to look for
When creating rules for Yara, it's important to look for strings you feel are specific to that file and family. The following are some examples of this:

Hardcoded file paths (Not installation names).
Unusual API calls that the files reference.
Function names.
Registry keys that the malware references.
Format Strings
The following items are likely to change so would be bad examples to include in yara rules. 

Domain names or IP addresses.
Installation file names or paths.
version numbers.
Alone, these pieces of data may be found in other non-malicious files, but if you identify many of these in malicious files, you can narrow down the possibility of matching legitimate software.
