# kubernetes-restartpod-example
An example of kubernetes cronjob to restart Deployment.

## Usage
1. Apply an example Deployment.

    ```bash
    $ kubectl apply -f hello-world-api.yaml
    ```
1. Edit restart schedule of restarter cronjob.
    * `restart-hello-world-api-cronjob.yaml` is set schedule as `0 1 * * *`, so cronjob restarts the restertee pods at 1AM (UTC) every day.

    ```bash
    $ vi restart-hello-world-api-cronjob.yaml
    ```
1. The Pods belonging to that Deployment will be restarted automatically at the scheduled time.

## License

[MIT License](/LICENSE)

## Copyright
Copyright (c) 2018 Nobuyuki Matsui <nobuyuki.matsui@gmail.com>
