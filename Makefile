RUSTC := rust build
RUSTC_OPTS :=
SOURCE := src/libpcre/lib.rs

all: build

build: $(SOURCE)
	mkdir build
	$(RUSTC) $(RUSTC_OPTS) src/libpcre/lib.rs --out-dir=build

test: clean
	$(RUSTC) $(RUSTC_OPTS) -L . --test pcre.rc -o pcretest~
	./pcretest~

clean:
	rm -rf pcre pcretest~ *.dSYM *.dylib *.so
