import requests
from bs4 import BeautifulSoup

def scrape_headlines(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')
    headlines = soup.find_all('h2')
    for headline in headlines:
        print(headline.text)

url = "https://www.example.com"
scrape_headlines(url)
