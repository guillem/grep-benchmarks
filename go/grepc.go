package main

import (
	"bufio"
	"bytes"
	"time"
	"fmt"
	"os"
)

func main() {
	t0 := float64(time.Now().UnixNano()) / 1e9
	counter := int64(0)
	f, _ := os.Open(os.Args[2])
	defer f.Close()
	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		if bytes.Contains(scanner.Bytes(), []byte(os.Args[1])) {
			counter++
		}
	}
	fmt.Printf("%d\n", counter)
	t1 := float64(time.Now().UnixNano()) / 1e9
	fmt.Printf("%f\n", t1-t0)
}

