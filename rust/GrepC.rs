
use std::io::BufReader;
use std::io::BufRead;
use std::fs::File;
use std::env;
use std::time::SystemTime;


fn main() {

	let time = SystemTime::now();
	let file = File::open(env::args().nth(2).unwrap()).unwrap();
	let reader = BufReader::new(&file);
	let mut counter = 0;
	for line in reader.lines() {
		let l = line.unwrap();
		if l.contains(&env::args().nth(1).unwrap()) {
			counter += 1;
		}
	}
	println!("{}", counter);
	let elapsed = time.elapsed().unwrap();
	println!("{}.{}", elapsed.as_secs(), elapsed.subsec_nanos());

}