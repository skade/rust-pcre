#[link(name = "pcre",
       vers = "0.1.0",
       uuid = "f9c2a030-535f-11e1-b580-af2a4a8fafef",
       url  = "https://github.com/uasi/rust-pcre")];

#[comment = "PCRE bindings for Rust"];
#[license = "MIT"];
#[crate_type = "lib"];

pub mod pcre;
pub mod consts;

#[cfg(test)]
mod tests;
