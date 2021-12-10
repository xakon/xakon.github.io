Rust Snippets
=============

A small collection of HOW-TOs for common [Rust] problems.

[Rust]:		https://www.rust-lang.org/


Files
-----

### 4 ways to read a file ###

Read the entire file as a `String`:

    fs::read_to_string(filepath)?

Read the entire file as a `Vec`:

    fs::read(filepath)?

Read a test file line by line:

    let file = File::open(filepath)?;
    let reader = BufReader::new(file);

    for line in reader.lines() {
      process(line?);
    }

Read a file with a buffer:

    const BUFSIZ: usize = 512;

    let mut buffer = [0u8; BUFSIZ];
    let mut file = File::open(filepath)?;

    loop {
       let count = file.read(&mut buffer)?;
       process(&buffer[..count]);

       if count != BUFSIZ {
	  break;
       }
    }

Or we could use a [BufReader](https://doc.rust-lang.org/std/io/struct.BufReader.html).
