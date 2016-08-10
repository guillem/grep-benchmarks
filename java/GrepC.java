import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Stream;

public class GrepC {
	public static void main(String args[]) throws IOException {
		long t0 = System.nanoTime();
		try (Stream<String> stream = Files.lines(Paths.get(args[1]))) {
			System.out.println(stream.filter(l -> l.contains(args[0])).count());
		}
		long t1 = System.nanoTime();
		System.out.println((t1-t0)/1e9);
	}
}

