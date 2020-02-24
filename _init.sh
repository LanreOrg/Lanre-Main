echo Executing: "$0"

cloneRepository() {
    message=$1
    path=$2
    repository=$3

    echo "    -- $message ..."
    mkdir -p $path
    git -C $path clone $repository
    echo "    -- $message finished"
}

echo '-- Git clone apis'
cloneRepository "products" "./Src/Apis/products/" https://github.com/LanreOrg/Lanre-Products.git
cloneRepository "stock" "./Src/Apis/stock/" https://github.com/LanreOrg/Lanre-Stock.git
cloneRepository "discounts" "./Src/Apis/discounts/" https://github.com/LanreOrg/Lanre-Discounts.git

echo '-- Git clone services'
cloneRepository "identityServer" "./Src/Services/identityServer/" https://github.com/LanreOrg/Lanre-IdentityServer.git

echo '-- Git clone clients'
cloneRepository "WebStatus" "./Src/Clients/WebStatus/" https://github.com/LanreOrg/Lanre-WebStatus.git
cloneRepository "lanreshop" "./Src/Clients/lanreshop/" https://github.com/LanreOrg/Lanre-VueShop.git

echo '-- Git clone BFFs'
cloneRepository "bff webapi" "./Src/BFFs/" https://github.com/LanreOrg/Lanre-BFF-WebApi.git

echo '-- Finished'
