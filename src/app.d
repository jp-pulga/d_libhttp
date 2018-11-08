import lighttp;

void main(string[] args) {
	auto server = new Server();
	server.host("0.0.0.0");
	server.host("::");
	server.router.add(new Router());
	server.run();
}

class Router {
	@Get("")
	getIndex(Request req, Response response) {
		response.headers["Content-Type"] = "text/html";
		response.body = "<h1>Hello, World!</h1>";
	}
}