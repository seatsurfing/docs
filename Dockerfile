FROM python:3-alpine AS builder
RUN apk add --no-cache --update gcc musl-dev
RUN pip3 install mkdocs mkdocs-material
ADD . /docs/
WORKDIR /docs
RUN mkdocs build

FROM nginx:1-alpine
COPY --from=builder /docs/site/ /usr/share/nginx/html/