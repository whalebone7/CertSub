# CertSub
CertSub is a command-line tool written in Bash that allows you to quickly and easily extract subdomains associated with a domain name. By providing a single domain or a list of domains in a file, CertSub makes use of the crt.sh website to perform a search and returns a list of unique subdomains sorted in alphabetical order.

# Usage
<img width="728" alt="Screen Shot 2023-04-05 at 20 38 33" src="https://user-images.githubusercontent.com/125891350/230206255-d530588e-7723-4957-b0fa-455915ea837b.png">



To use CertSub, simply download the certsub.sh file and make it executable:

$ chmod +x certsub.sh

You can then run CertSub by providing a single domain with the -u option:

$ ./certsub.sh -u example.com

Or, you can provide a list of domains in a file with the -f option:

$ ./certsub.sh -f domains.txt

The file domains.txt should contain one domain per line.

# Examples
![carbon](https://user-images.githubusercontent.com/125891350/230206559-2b0dd28f-aa9d-417a-a1c6-ab7561241791.png)




# Extract subdomains of domains listed in a file

Given a file named domains.txt with the following contents:

example.com

test.com

Run the following command:



![carbon](https://user-images.githubusercontent.com/125891350/230206788-52445cb6-f739-468d-9af5-421bbfc1ad59.png)


# Credits 

CertSub is written by the whalebone. Twitter: @whalebone71. The tool makes use of the crt.sh website to extract subdomains.





