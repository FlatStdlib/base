
#include "headers/libweb.h"

route_t create_route(string name, string path, handler_t fnc, int view_only)
{
    route_t r = allocate(0, sizeof(_route));
    r->name = str_dup(name);
    r->path = str_dup(path);
    r->handle = fnc;

    if(!view_only)
        r->parse_req = true;

    return r;
}