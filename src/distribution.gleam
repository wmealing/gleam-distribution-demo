import gleam/io

//net_kernel:start([Name, longnames]),
//erlang:set_cookie(Name, list_to_atom(Cookie)).

@external(erlang, "rand", "uniform")
pub fn random_float() -> Float

pub fn main() {
  io.debug(random_float())
}
