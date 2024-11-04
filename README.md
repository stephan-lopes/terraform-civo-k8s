# Obtaining a token
## Using the CIVO_TOKEN variable
To use the Civo token, export the variable containing your token:

```sh
export CIVO_TOKEN=<your token>
```

## Writing the kubeconfig
Use the Civo CLI and run the following, to automatically configure kubectl:

```sh
civo kubernetes config example-cluster --save --switch
```