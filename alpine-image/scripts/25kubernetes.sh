set -eux


echo "Downloading Kubernetes Binaries from local http server"
echo ""
echo "kubeadm: $KUBEADM_URL"
curl -s -k $KUBEADM_URL >/usr/local/bin/kubeadm

chmod +x /usr/local/bin/kubelet /usr/local/bin/kubectl /usr/local/bin/kubeadm

echo "Extracting kubernetes cni binaries..."
mkdir -p /opt/cni
cd /opt/cni
tar xvfpz /tmp/cni.tar.gz
rm -f /tmp/cni.tar.gz

exit 0

