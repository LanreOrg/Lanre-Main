DIRECTORIES=""
DIRECTORIES="${DIRECTORIES} ./Src/Apis/products/"
DIRECTORIES="${DIRECTORIES} ./Src/Apis/stock/"
DIRECTORIES="${DIRECTORIES} ./Src/Apis/discounts/"
DIRECTORIES="${DIRECTORIES} ./Src/Services/identityServer/"
DIRECTORIES="${DIRECTORIES} ./Src/Clients/WebStatus/"
DIRECTORIES="${DIRECTORIES} ./Src/Clients/lanreshop/"

echo '-- List of directories'

for DIRECTORY in ${DIRECTORIES}; do
    echo "    ${DIRECTORY}"
    git -C ${DIRECTORY} pull
done

echo '-- Finished'
