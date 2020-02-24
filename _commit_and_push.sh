echo Executing: "$0"

message=$1

DIRECTORIES=""
DIRECTORIES="${DIRECTORIES} ./Src/Apis/products/"
DIRECTORIES="${DIRECTORIES} ./Src/Apis/stock/"
DIRECTORIES="${DIRECTORIES} ./Src/Apis/discounts/"
DIRECTORIES="${DIRECTORIES} ./Src/Services/identityServer/"
DIRECTORIES="${DIRECTORIES} ./Src/Clients/WebStatus/"
DIRECTORIES="${DIRECTORIES} ./Src/Clients/lanreshop/"
DIRECTORIES="${DIRECTORIES} ./Src/BFFs/Lanre-WebApi/"

echo '-- Commit in repos'

for DIRECTORY in ${DIRECTORIES}; do
    echo "    ${DIRECTORY}"
    git -C ${DIRECTORY} add -A
    git -C ${DIRECTORY} commit -m "$message"
    git -C ${DIRECTORY} push
done

echo '-- Finished'
