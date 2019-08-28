#  IPFinder Nmap script
 Use Ipfinder to lookup the geolocation information with ipfinder-cli


## Getting Started

- See the [IPFinder Cli](https://github.com/benemohamed/ip-finder-cli).


## Requirements
-  PHP >= 7.1
- [IPFinder Cli](https://github.com/benemohamed/ip-finder-cli) 


## Installation
Copy the ipfinder.nse to your Nmap program directory/scripts.


## How to Use

```bash
$ nmap --script ipfinder <target>
````

 free output
![free ipfinder](free.svg)

work with your Api key
```bash
$ ipfinder -g
Enter Your Api key:YOUR_TOKEN_GOES_HERE
```

paid output
![paid ipfinder](paid.svg)



## Contact

Contact Us With Additional Questions About Our API, if you would like more information about our API that isn’t available in our IP geolocation API developer documentation, simply [contact](https://ipfinder.io/contact) us at any time and we’ll be able to help you find what you need.

## License

----
[![GitHub license](https://img.shields.io/github/license/ipfinder-io/ip-finder-nmap.svg)](https://github.com/ipfinder-io/ip-finder-nmap)
