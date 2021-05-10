Idioms
======

A collection of some common Go idioms.

### Check for key in a `map` ###

    v, ok = monthdays["Jan"]		// ok == true if "Jan" in monthdays

### Define method with multiple return values ###

    func (file *File) Write(b []byte) (n int, err error)

### Loop over a string ###

```go
// \x80 is an illegal UTF-8 encoding
for pos, char := range("日本\x80語" {
   fmt.Printf("character %#U starts at byte position %d\n", char, pos)
}
```
