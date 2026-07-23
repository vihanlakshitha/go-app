# Stage 1: Build
FROM golang:1.26-alpine AS build
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# Stage 2: Run
FROM alpine:latest
WORKDIR /app
COPY --from=build /app/main .
ENV PORT=8080
EXPOSE 8080
CMD ["./main"]