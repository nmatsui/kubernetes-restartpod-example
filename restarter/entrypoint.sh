#!/bin/ash

echo "#### start job $(date '+%Y-%m-%dT%H:%M:%S.%sZ') ####"

TOKEN=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
curl -isSk -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/strategic-merge-patch+json" https://${KUBERNETES_SERVICE_HOST}:${KUBERNETES_PORT_443_TCP_PORT}/apis/apps/v1/namespaces/${NAMESPACE}/deployments/${DEPLOYMENT_NAME}/ -X PATCH -d @- <<__EOS__
{
  "spec": {
    "template": {
      "metadata": {
        "annotations": {
          "lastUpdate": "$(date '+%Y-%m-%dT%H:%M:%S.%sZ')"
        }
      }
    }
  }
}
__EOS__

echo ""
echo "#### end job $(date '+%Y-%m-%dT%H:%M:%S.%sZ') ####"
