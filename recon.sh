# RECON
# This program will allow you too quickly and easily scan targets for vulnerabilites and future exploits
# Made by 16 year old Ethical Hacker John Pertell
# Credit to Nullbyte for inspirations and ideas, I would highly suggest you visit the site if you are an aspiring hacker


if [ -z "$1" ]					       # Set "$1" to target
then
        echo "Usage: recon.sh <IP>"                    # This will ensure the user is inputting correctly
        exit 1					       # This will exit if used incorrectly
fi

echo ""
echo "Digital Reconnaissance..."
sleep 1							# Starting Program
echo "Scanning Target for vulnerabilities..."
sleep 2
echo ""


printf "\n----- NMAP -----\n\n" > temp1
sleep 1
nmap $1 -O  >> temp1					# Run NMAP and save results to temp1
sleep 1


printf "\n----- CURL -----\n\n" > temp2
curl $1 >> temp2					# Run CURL and save results to temp2
sleep 1


printf "\n----- WHOIS -----\n\n" > temp3
sleep 1
whois $1 >> temp3					# Run WHOIS and save results to temp3
sleep 1


printf "\n----- WHATWEB -----\n\n" > temp4
sleep 1
whatweb $1 >> temp4					# Run WHATWEB and save results to temp4
sleep 1

echo ""
echo "Proccessing results..."
sleep 5


printf "\n" > temp5
printf "\n" > temp5
printf "\n----- END -----\n\n" > temp5


printf "\n----- RESULTS -----\n" > temp
printf "\nNmap\n" >> temp
printf "\nCurl\n" >> temp
printf "\nwhois\n" >> temp
printf "\nwhatweb\n" >> temp


cat temp				# Displays temp
sleep 2
cat temp1				# Displays temp1
sleep 2
cat temp2				# Displays temp2
sleep 2
cat temp3				# Displays temp3
sleep 2
cat temp4				# Displays temp4
sleep 2
cat temp5				# Displays temp5

#rm temp
rm temp1
rm temp2
rm temp3				# Removes all temp files
rm temp4
rm temp5
