echo "Waiting for site to spin up... ⏱"
sleep 180

echo "Retrieving loadbalancer hostname from service 🚀"
hostname=$( kubectl get services frontend --output jsonpath='{.status.loadBalancer.ingress[0].hostname}' )

status_code=$( curl --head --location --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null http://${hostname} )
if [[ "$status_code" == 200 ]] ; then
    echo "The site is up! 🤘🏻🥳🤘🏻"
else
    echo "The site is not running... 🤬"
    exit 1
fi
