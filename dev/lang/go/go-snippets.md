Go Snippets
===========

I found these snippets mostly at [Golang Examples](http://golang-examples.tumblr.com/)
and I really loved the idea of having a "database" of snippets, ready to be used in
production.

[Go](http://golang.org/) is a new language and there isn't still so much knowledge
and samples about it.

## Index

- Get Local IP addresses


## Samples

### Get Local IP addressess

```Go
// Get IP addresses
addrs, err := net.InterfaceAddrs()
if err != nil { panic(err) }

for i, addr := range addrs {
   fmt.Printf("%d %v\n", i, addr)
}

// Print names of known interfaces
list, err := net.Interfaces()
if err != nil { panic(err) }

for i, iface := range list {
   fmt.Printf("%d name=%s %v\n", i, iface.Name, iface)
   addrs, err := iface.Addrs()
   if err != nil { panic(err) }
   for j, addr := range(addrs) {
      fmt.Printf(" %d %v\n", j, addr)
   }
}
```

### Read one line from io.Reader

`bufio.ReadBytes()` is more convenient that `bufio.ReadLine()`.

```Go
   bio := bufio.NewReader(os.Stdin)
   for {
      line, err := bio.ReadBytes('\n')
      if err == io.EOF { break }
      if err != nil { panic(err) }

      sline := strings.TrimRight(string(line), "\n")
      // ...
   }
```

### Read line from stdin

Use `bufio` and `os.Stdin`.

```Go
reader := bufio.NewReader(os.Stdin)
line, more, err := reader.ReadLine()
```

Variable `more` will be true if the line is too long for the buffer.

### Sort a slice

Use `sort.Sort()`.  Argument is an object that is not necessarily a slice.
It needs to implement the following functions:

```Go
type Interface interface {
   Len() int
   Less(i, j int) bool
   Swap(i, j int)
}
```

### Write a UDP/TCP client

```Go
addr, err := net.ResolveUDPAddr("udp", "192.168.1.1:69")
conn, err := net.DialUDP("udp", nil, addr)
```

Replace UDP with TCP on the above fragment for TCP connections.
