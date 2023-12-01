##Flutter grpc!

#Base project to test grpc call with envoy and apiSix proxy


#To run grpc call through apisix proxy

1. In IDE terminal start the Node.js gRPC service, which is set to listen on port `:9017`.

Please run npm install to install dependencies
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
      
      Request Basic Define Host 127.0.0.1
      Upsteam type Node
      Targets Host : host.docker.internal PORT 9017
      Schema grPc
      ENABLE CORS AND GRPC-WEB plugin

All other settings default

6. After adding route configurations Now Launch Flutter app in chrome (web) and click on Test Hello.
Now Launch Flutter app in chrome (web) and click on Test Hello, you will observe the following output. run this command from the root directory

```sh
 $ flutter build web -t lib/main.dart --no-tree-shake-icons && flutter run -d chrome -t lib/main.dart --flavor development
```
