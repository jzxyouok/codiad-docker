# codiad-docker
**Latest version: 2.8.1**

Run a Codiad container which serves at port 80.

## Usage
1. What is Codiad and how to use it? Please refer to
[http://codiad.com](http://codiad.com).

2. Run the following command to start the server:
```bash
# Let the container host everything.
docker run --name codiad -d --restart=always -p 80:80 xiangquan/codiad
```
In most situations, you may want to use the workspace on host:
```bash
docker run --name codiad -d --restart=always -p 80:80 \
    -v ${YOUR_WORKSPACE}:/var/www/html/workspace \
    xiangquan/codiad
```
Professionals who want to backup their settings, install new themes as well as
plugins can mount some more volumes:
```bash
docker run --name codiad -d --restart=always -p 80:80 \
    -v ${YOUR_WORKSPACE}:/var/www/html/workspace \
    -v ${YOUR_CODIAD_CONFIG}:/var/www/html/config.php \
    -v ${YOUR_CODIAD_DATA}:/var/www/html/data \
    -v ${YOUR_CODIAD_PLUGINS}:/var/www/html/plugins \
    -v ${YOUR_CODIAD_THEMES}:/var/www/html/themes \
    xiangquan/codiad
```
3. Visit the home page to finish the Codiad installation process.
