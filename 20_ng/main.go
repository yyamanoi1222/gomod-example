package main

import "io"

func F[T comparable]() {}

type I[T comparable] interface{ G(T) }

func main() {
	F[any]()
	F[io.Reader]()
	F[struct{ any }]()
	F[[1]any]()
	F[I[any]]()
}
