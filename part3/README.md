# Part 3

## Exercise 3.1

Original frontend image is 551MB and the optimized version is 522MB.

[Frontend Dockerfile](exercise-01/frontend/Dockerfile)

Original backend image is 336MB and the optimized version is 308MB.

[Backend Dockerfile](exercise-01/backend/Dockerfile)

## Exercise 3.2

Created a deployment pipeline to Heroku using Github Actions for the repository here: https://github.com/tapanih/social-news-site

Relevant files:

[Dockerfile](exercise-02/Dockerfile)

[workflow.yml](exercise-02/workflow.yml)

## Exercise 3.3

[builder.sh](exercise-03/builder.sh)

[Dockerfile](exercise-03/Dockerfile)

Run with:
```
sudo docker run -it -v /var/run/docker.sock:/var/run/docker.sock builder
```

## Exercise 3.4

[Frontend Dockerfile](exercise-04/frontend/Dockerfile)

[Backend Dockerfile](exercise-04/backend/Dockerfile)

## Exercise 3.5

Original frontend image is 523MB and the optimized version is 332MB.

[Frontend Dockerfile](exercise-05/frontend/Dockerfile)

Original backend image is 336MB and the optimized version is 117MB.

[Backend Dockerfile](exercise-05/backend/Dockerfile)

## Exercise 3.6

Original frontend image is 332MB and the optimized version is 86.5M.

[Frontend Dockerfile](exercise-06/Dockerfile)

## Exercise 3.7

Original image was 976MB and the optimized version is 275MB.

[Original Dockerfile](../part1/dockerfiles/exercise-15/Dockerfile)

[Optimized Dockerfile](exercise-07/Dockerfile)
