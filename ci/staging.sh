docker kill staging-backend staging-frontend
docker run -d --name staging-backend ghcr.io/stefanowich33/simple-fortune-cookie/cookie-backend:$0
docker run -d --name staging-frontend ghcr.io/stefanowich33/simple-fortune-cookie/cookie-frontend:$0 --env BACKEND_DNS=backend