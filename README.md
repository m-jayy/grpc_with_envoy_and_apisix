##Flutter grpc!

#Base project to test grpc call with envoy and apiSix proxy

#To run grpc call through envoy proxy

1. In IDE terminal start the Node.js gRPC service, which is set to listen on port `:9017`.

 ```sh
 $ node server.js &
 ```

2. In IDE terminal run the Envoy proxy. The `envoy.yaml` file configures Envoy to listen to
      browser requests at port `:9081`, and forward them to port `:9017`

> ```sh
> $ docker run -d -v "$(pwd)"/envoy.yaml:/etc/envoy/envoy.yaml:ro \
>     -p 9081:9081 -p 9901:9901 envoyproxy/envoy:v1.22.0
>  ```

Now Launch Flutter app in chrome (web) and click on Test Hello, you will observe the following output.

```
Hello! Mohsin Javed
```

#To run grpc call through apisix proxy

1. In IDE terminal start the Node.js gRPC service, which is set to listen on port `:9017`.

 ```sh
 $ node server.js &
 ```

2. In IDE terminal navigate to the "example" folder of the apisix_docker

```
cd apisix_docker/example
```

3. Now, we can start all modules with docker-compose

 ```sh
 $ docker-compose -p docker-apisix up -d
 ```

If you check you Docker Desktop, you should see the list of running containers.

4. In order to open Dashboard running locally, you should visit this url:

```
http://localhost:9000/user/login
```

And enter username:admin , password:admin

5. After successful login, welcome screen should be opened. add route configuration here.

6. After adding route configurations Now Launch Flutter app in chrome (web) and click on Test Hello.
