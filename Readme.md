#Giphroll

Giphroll is a replacement for the Giphy Slack integration. Giphroll always returns the same gif. The default is a gif of Rick Astley, hence the name.

##Setup
1. Create an "Incoming Webhook" integration at Slack and take note of Webhook URL.
2. Create a "Slash Command" integration at Slack and take note of the Token.
3. Copy ```sample.env``` to ```.env``` and edit accordingly.
4. Deploy the code somewhere Ruby friendly.
5. Profit

##Known Issues
The official Giphy integration posts to Slack with the ```as_user``` argument. Giphroll posts as a bot. I may resolve this on a rainy day.

##Why?
I wanted to learn more about Docker, CoreOS, and clusters. This was arguably more interesting than containerizing and deploying "hello world". It also had the benefit of serving as an April Fool's gag for my coworkers at [@revmsg](https://revolutionmessaging.com/).
