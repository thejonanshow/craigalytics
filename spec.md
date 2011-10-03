## Craigalytics

This gem allows you to count the number of occurrences of specific keywords across craigslist pages using their rss feeds.

Create a new PostCollection:
    computer_gigs = Craigalytics::PostCollection.new(:cpg)

Note that the symbol (or array of symbols) you pass in to your PostCollection is the path to the craigslist category you are targeting, without the craigslist domain (i.e. to get posts on all pages like "http://sfbay.craigslist.org/cpg/" use :cpg).

You will need to update your PostCollection to collect your first round of posts:
    computer_gigs.update

This will take some time the first time you run it, as you are pulling back the first 100 posts from each rss feed. After the initial import Craigalytics will only save new posts, so things should speed up if you update regularly.

Once you have some data you can count specific keywords from the PostCollection with the count method:
    computer_gigs.count('ruby')
	=> 1337

The count method can take a single string or an array of strings.

That's it for now. In the future I will be adding the ability to ask for keywords from a specific date range and a method of doing visual keyword comparisons using graphs and charts.

You may notice that it doesn't exist yet, and then you will go read this article: http://tom.preston-werner.com/2010/08/23/readme-driven-development.html and everything will become clear.

TODO: Actually write this readme and transfer it to a spec, copying the documentation back to this readme as it is implemented.
