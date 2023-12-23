# Data Collection Pipeline

Implementation of a web scraper that uses Selenium to scrape information from yahoo finance (https://uk.finance.yahoo.com/currencies/). The scraper returns the information in the form of a csv file and jpg images of the website logo. The project follows a CI/CD workflow using GitHub Actions which automatically pushes a Docker image to my [Docker Hub profile](https://hub.docker.com/u/sarahaisagbon).

The scraper can be implemented by running the [Webscraping.py](https://github.com/SarahAisagbon/selenium-edge-scraper/blob/remote/Project/Webscraping.py) file, or by pulling and running the Docker image found [here](https://hub.docker.com/r/sarahaisagbon/webscraper) with the following commands:

1) docker pull sarahaisagbon/webscraper
2) docker run -it --rm webscraper 

# Project Documentation

## Milestone 1: Setting Up a Web Scraper with Selenium
Technologies / Skills:
- Web Scraping (HTML, Selenium, uuid)

I'm interested in trading, so I decided to scrape data about currencies from Yahoo Finance. A webscraping class Scraper was built using Selenium to drive the Edge browser. Methods of this class include those to load the page, accept cookies, and scrape links for all currencies from the given query.

## Milestone 2: Developing the Selenium Web Scraper
Technologies / Skills:
- Advanced Selenium, Pandas, Os, json, requests, time

Further methods for scraping key data from the Yahoo Finance website were developed, including currency, currency prices, image link, timestamp, and UUID. The data was then saved in a .json file, as well as downloaded image files of the website logo and saved it as <date>_<time>_<order of image>.<image file extension>.

The scraper is run as intended by an instance of the function ScrapingTime, which requires the user to input a list of currencies and the website url which will be searched:

## Milestone 3: Documentation and Testing
Technologies / Skills:
- Abstraction & Encapsulation in OOP
- Renamed functions
- Rearranged imports and from statements alphabetically
- System, Integration, and Unit Testing
    - unittest
- Project Structure for Software Development
- Google docstrings

Unit testing of public methods of the Scraper class was implemented using the python unittest framework and is found in [test_webscraping.py](https://github.com/SarahAisagbon/selenium-edge-scraper/blob/remote/Test/test_webscraping.py) file.

## Milestone 4: Containerising the Waterstones Web Scraper
Technologies / Skills:
- Docker Images & Containers
- Docker Hub

A docker image which runs the scraper was then built and pushed to [Docker Hub](https://hub.docker.com/r/sarahaisagbon/webscraper). 

## Milestone 5: Setting Up a CI/CD Pipeline for the Docker Image
Technologies / Skills:
- CI/CD Pipelines
- GitHub Actions

A continuous integration / continuous delivery (CI/CD) pipeline was set up using GitHub Actions. The workflow, laid out in the [main.yml](https://github.com/SarahAisagbon/selenium-edge-scraper/blob/remote/.github/workflows/main.yml) file, defines steps to check out the repository of the build machine, signs in to Docker Hub using the relevant credentials in the repository secrets, builds the container image, and pushes it to the Docker Hub repository.

CI/CD is an agile DevOps workflow that relies on automation to reduce deployment time and increase software quality through automation of tests, improved system integration, and reduced costs.
