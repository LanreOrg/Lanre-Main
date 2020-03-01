DIRECTORIES=""
DIRECTORIES="${DIRECTORIES} ."
DIRECTORIES="${DIRECTORIES} ./Src/Apis/products/"
DIRECTORIES="${DIRECTORIES} ./Src/Apis/stock/"
DIRECTORIES="${DIRECTORIES} ./Src/Apis/discounts/"
DIRECTORIES="${DIRECTORIES} ./Src/Services/identityServer/"
DIRECTORIES="${DIRECTORIES} ./Src/Clients/WebStatus/"
DIRECTORIES="${DIRECTORIES} ./Src/Clients/lanreshop/"
DIRECTORIES="${DIRECTORIES} ./Src/Shared/Lanre.Shared.Api/"

echo '-- List of directories'

for DIRECTORY in ${DIRECTORIES}; do
    echo "    ${DIRECTORY}"
    git -C ${DIRECTORY} pull
    # auth mode
    # git clone https://user:pass@repo
done

echo '-- Finished'
