usage() {
    echo -e "\033[1;34mCertSub v1.0 - written by the whalebone\033[0m"
    echo -e "\033[1;34mTwitter: @whalebone71\033[0m\n"
    echo -e "Usage: $0 [-u <domain>] [-f <file>]\n"
    echo "Options:"
    echo "  -u <domain>     Search for subdomains of a single domain."
    echo "  -f <file>       Search for subdomains of domains listed in a 
file (one domain per line)."
    exit 1
}

if [ $# -eq 0 ]; then
    usage
fi

while getopts ":u:f:" opt; do
    case ${opt} in
        u)
            domain=$OPTARG
            ;;
        f)
            file=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            usage
            ;;
    esac
done

if [ -z "$domain" ] && [ -z "$file" ]; then
    usage
fi

get_subdomains() {
    curl -s "https://crt.sh/?q=$1" | grep "<TD>" | grep "$1" | cut -d ">" -f 2 | cut -d "<" -f 1 | sort -u
}

if [ ! -z "$domain" ]; then
    get_subdomains "$domain"
fi

if [ ! -z "$file" ]; then
    while read -r line; do
        get_subdomains "$line"
    done < "$file"
fi
