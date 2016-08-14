
public class GrepC {

	public static void Main(string[] args) {

		System.Diagnostics.Stopwatch stopwatch = new System.Diagnostics.Stopwatch();
		stopwatch.Start();

		int counter = 0;
		string line;
		System.IO.StreamReader file = new System.IO.StreamReader(args[1]);
		while ((line = file.ReadLine()) != null) {
			if (line.Contains(args[0])) {
				counter++;
			}
		}
		file.Close();
		System.Console.WriteLine(counter);

		stopwatch.Stop();
		System.Console.WriteLine(stopwatch.ElapsedMilliseconds / 1000.0);

	}

}


