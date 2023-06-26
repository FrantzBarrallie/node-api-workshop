#!/bin/bash

docker-compose up -d
docker-compose exec -d api bash -c "yarn && yarn dev"
docker-compose exec api bash -c "yarn test"
docker-compose down --volumes