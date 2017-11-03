package main

import (
	"flag"
	"fmt"
	elastic "gopkg.in/olivere/elastic.v5"
	//"log"
	"context"
)

var concurrentnumber int
var requestpergo int

var ctx context.Context = context.Background()
var url string
var sniff bool

//= flag.Int("-cn", 4, "concurrent number")

func init() {
	flag.IntVar(&concurrentnumber, "cn", 4, "concurrent number")
	flag.IntVar(&requestpergo, "rp", 100, "request per goroutine")
	flag.StringVar(&url, "url", "http://localhost:9200", "the server ip+port")
	flag.BoolVar(&sniff, "sniff", false, "--false=true/false, default false")

}

//Enter "./ binary file -h to learn more"
func main() {
	flag.Parse()
	client := getClient(url)
	getServerInfo(client)
}

func getClient(url string) *elastic.Client {
	client, err := elastic.NewClient(elastic.SetURL(url), elastic.SetSniff(sniff))
	if err != nil {
		panic(err)
	}
	fmt.Println("Create Client Success")
	return client
}
func getServerInfo(client *elastic.Client) {
	info, code, err := client.Ping(url).Do(ctx)
	if err != nil {
		panic(err)
	}
	fmt.Println("Ping Server Success")
	fmt.Printf("ELS Version is %s and return code %d\n", info.Version.Number, code)
}

func mainprocess(concurrentnumber int, requestpergo int) {

}

func subprocess(requestpergo int) {

}

const mapping = `
{
	"settings":{
		"number_of_shards": 1,
		"number_of_replicas": 0
	},
	"mappings":{
		"tweet":{
			"properties":{
				"user":{
					"type":"keyword"
				},
				"message":{
					"type":"text",
					"store": true,
					"fielddata": true
				},
				"image":{
					"type":"keyword"
				},
				"created":{
					"type":"date"
				},
				"tags":{
					"type":"keyword"
				},
				"location":{
					"type":"geo_point"
				},
				"suggest_field":{
					"type":"completion"
				}
			}
		}
	}
}`
