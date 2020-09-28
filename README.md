# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    - 2.6.5
## Docker
### Docker image
    `docker pull somalipirat3/authentication_api`
    `docker run --name authentication_api -p 3000:3000 -e DATABASE_HOST=localhost -e DATABASE_PORT=5432 -e DATABASE_USERNAME=username -e DATABASE_PASSWORD=mysecretpassword -e SECRET_KEY_BASE=akudhiudhediu somalipirat3/authentication_api`
### Environment veriables
    `SECRET_KEY_BASE`
    `DATABASE_HOST`
    `DATABASE_PORT`
    `DATABASE_USERNAME`
    `DATABASE_PASSWORD`
* ...
