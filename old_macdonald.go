package main

import (
	"fmt"
	"time"
)

type Thing struct {
	thing []string
}

var name string = "Old MacDonald"
var farm_animals = []string{"ducks", "cows", "pigs"}
var drinks = []string{"bourbon", "scotch", "beer"}

var things = map[string]Thing{
	"farm": Thing{farm_animals},
	"bar":  Thing{drinks},
}

func main() {

	// what day of the week is it?
	today := time.Now().Weekday().String()

	// During the week, Old Mac works on the farm
	var workplace string
	switch {
	case (today == "Saturday") || (today == "Sunday"):
		fmt.Println("It's the weekend, time to work the second job")
		workplace = "bar"
	default:
		fmt.Println("It's the week, back to farming")
		workplace = "farm"
	}

	// sample if else usage
	if today == "Saturday" {
            
	} else {

	}

	fmt.Printf("%s had a %s\n", name, workplace)
    
	d := time.Duration(1)*time.Second

    fmt.Println("EI...")
	time.Sleep(d)
    fmt.Println("EI...")
	time.Sleep(d)
    fmt.Println("OHHHH")
}
