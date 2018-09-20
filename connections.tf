provider "google" {
credentials = "${file("../account.json")}"
project ="steadfast-slate-206314"
region="us-east1"
}
