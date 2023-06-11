![Docker Image Version (latest semver)](https://img.shields.io/docker/v/nards/docker_404?sort=semver&label=Version&logo=docker)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/nards/docker_404?label=Size&logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/nards/docker_404?label=Pulls&logo=docker)
![Docker Stars](https://img.shields.io/docker/stars/nards/docker_404?label=Stars&logo=docker)
![GitHub Repo forks](https://img.shields.io/github/forks/nards-it/docker_404?label=Forks&logo=github)
![GitHub Repo stars](https://img.shields.io/github/stars/nards-it/docker_404?label=Stars&logo=github)

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/nards-it/docker_404/main.yaml?label=Latest%20build&logo=github)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/nards-it/docker_404/release.yaml?label=Last%20release%20build&logo=github)
![GitHub issues](https://img.shields.io/github/issues/nards-it/docker_404?label=Issues&logo=github)
![GitHub pull requests](https://img.shields.io/github/issues-pr/nards-it/docker_404?label=Pull%20requests&logo=github)
![GitHub commits since latest release (by SemVer)](https://img.shields.io/github/commits-since/nards-it/docker_404/latest?sort=semver)
![GitHub Licence](https://img.shields.io/github/license/nards-it/docker_404)

# Docker 404 Service

This Docker image sets up a simple HTTP server using Nginx that responds with a "404 Not Found" error for every request.

## Usage

### Pull the Docker Image

To use this image, you can pull it from Docker Hub by running the following command:

```bash
docker pull nards/docker_404
```

### Run the Docker Container

To run the Docker container and expose the service on port 80, use the following command:

```bash
docker run -d -p 80:80 nards/docker_404
```


### Access the Service

Once the container is running, you can access the service by opening a web browser and navigating to `http://localhost`. Every request to the server will receive a "404 Not Found" response.

## Customization

### Changing the Error Page

By default, the server returns a simple HTML page with the "404 Not Found" error message. You can customize the error page by modifying the `index.html` file in the container's `/usr/share/nginx/html/` directory.

### Branding

You have the option to customize the branding of the 404 error page by changing the default logo. There are two methods you can use:

1. **Using the LOGO_URL Environment Variable:** Set the `LOGO_URL` environment variable to specify the URL of the image you want to use as the logo. This image will replace the default logo on the 404 error page.

2. **Mounting a Local Logo File:** Alternatively, you can provide a local logo file and mount it into the Docker container. The local logo file should be in PNG format and named `logo.png`. Mount it to the path `/usr/share/nginx/html/logo.png` within the container.

Whichever method you choose, the customized logo will be displayed on the 404 error page.

Please note that if both the `LOGO_URL` environment variable and a local logo file are provided, the `LOGO_URL` takes precedence, and the local logo file will be ignored.


## Contributing

If you have any suggestions, improvements, or issues, feel free to open an issue or submit a pull request on the GitHub repository.

## License

This project is licensed under the MIT License.
