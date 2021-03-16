# wasteAPI

Deployed to Heroku  [WasteAPI](https://city-app-waste-advisor.herokuapp.com/)

To use the API:
 Send an image via a POST Request to: https://city-app-waste-advisor.herokuapp.com/upload 
 Api end point Expects: Binary data of image file if used as microservice.
 response : Json data {"Prediction": "result text"}



#Instructions for deployment to Heroku.

install heroku cli if not already done.

heroku login -> login in browser.

heroku stack:set container --app wasteadvisor 
--
should change from heroku stack to container to use docker.


#connect heroku to github for CI /CD 
->create a heroku pipeline > new app > production.
  enable auto deployment ( this selection will help in deploying small code changes directly into the app ( can also perform automated tests in staging area ).

--------------------------------------------------------------------------------------------keras model to classify waste items as per the color of bin they should go to. Model trained on [Teachable Machine](https://teachablemachine.withgoogle.com)
Has a Dockerfile which is not very optimised.
Credits for starlette base code and Dockerfile. [Greenr](https://github.com/btphan95/greenr-tutorial)
Also check out his [Medium Blog](https://towardsdatascience.com/10-minutes-to-deploying-a-deep-learning-model-on-google-cloud-platform-13fa56a266ee), this guy got me started with Docker.

References: Youtube Vid1[Youtube]()