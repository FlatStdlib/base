#define __CLIBP_DEBUG__
#include "headers/libweb.h"

cws_t init_web_server(string ip, i32 port)
{
	cws_t ws = allocate(0, sizeof(_cws));
	if(!ws)
		clibp_panic("Segfault");

	ws->ip = ip;
	ws->port = port;
	ws->connection = listen_tcp(NULL, port, 99);
	ws->middleware = NULL;
	ws->routes = NULL;
	ws->route_count = 0;

	listen_for_request(ws);
//	ws->thread = allocate(0, sizeof(_thread));
//	if(!ws->thread)
//		clibp_panic("error, unable to allocate mem");

//	*ws->thread = start_thread((handler_t)listen_for_request, ws, 0);
	return ws;
}

handler_t listen_for_request(cws_t ws) {
	sock_t client;
	while(1)
	{
		println("Listening for web requests....!");
		if(!(client = sock_accept(ws->connection, 1024)))
			continue;

		cwr_t wr = allocate(0, sizeof(_cwr));
		if(!wr)
			clibp_panic("error, unable to allocate new request struct");
		wr->socket = client;
		wr->thread = allocate(0, sizeof(_thread));
		*wr->thread = start_thread((handler_t)request_handler, wr, 0);
	}

	println("Exiting...");
}