## Setup Instructions

### Preparing the Scripts

1. **Make the Scripts Executable:**

    Run the following commands to make the scripts executable:

    ```sh
    chmod +x setup-master.sh
    chmod +x generate-join-commands.sh
    chmod +x deploy-service-lb.sh
    chmod +x deploy-app.sh
    chmod +x deploy-worker-app.sh
    ```

### On the macOS Master Node

1. **Initialize the Kubernetes Master Node:**

    Run the `setup-master.sh` script to initialize the Kubernetes master node:

    ```sh
    ./setup-master.sh
    ```

2. **Generate Join Command for Worker Nodes:**

    After the master node is set up, generate the join command for worker nodes:

    ```sh
    ./generate-join-commands.sh
    ```

3. **Deploy the Master Application and Services:**

    Deploy the master application and services:

    ```sh
    ./deploy-app.sh
    ```

### On the macOS and Windows Worker Nodes

1. **Transfer the Join Command Script:**

    Transfer the `join-command.sh` script to each worker node. You can use SCP (secure copy) or any other file transfer method. For example, using SCP:

    ```sh
    scp user@master-node-ip:/path/to/join-command.sh /path/to/local/
    ```

2. **Join the Cluster:**

    Run the `join-command.sh` script to join the cluster:

    ```sh
    ./join-command.sh
    ```

3. **Deploy Worker Applications and Services:**

    Deploy worker applications and services:

    ```sh
    ./deploy-worker-apps.sh
    ```

### Example Content for `join-command.sh`

Here’s an example of what the content of `join-command.sh` might look like:

```sh
kubeadm join <master-ip>:6443 --token <token> --discovery-token-ca-cert-hash sha256:<hash>
