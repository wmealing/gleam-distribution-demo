import gleam/erlang/charlist.{type Charlist}
import gleam/erlang/process

//net_kernel:start([Name, longnames]),
//erlang:set_cookie(Name, list_to_atom(Cookie)).

@external(erlang, "distr", "start_short")
pub fn net_kernel_start(name: Charlist) -> Bool

@external(erlang, "distr", "set_cookie_erlang")
fn set_cookie_erlang(name: Charlist, cookie: Charlist) -> Bool

pub fn set_cookie(nodename: String, cookie: String) {
  set_cookie_erlang(
    charlist.from_string(nodename),
    charlist.from_string(cookie))
}


pub fn main() {
  net_kernel_start(charlist.from_string("node1@foo"))
  set_cookie("node1@foo", "secret")
  process.sleep_forever()

}
