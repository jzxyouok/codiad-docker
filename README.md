# codiad-docker
**Latest version: 2.8.1**

Run a Codiad container which serves at port 80.

## Usage
1. Run the following command to start the server.
```bash
docker run --name codiad -d --restart=always \
    -p 80:80 \
    -v /your/workspace:/home/ws \
    xiangquan/codiad
```
2. Visit the home page to finish the standard installation.
3. Add and work on your projects at /home/ws/<project_dir>.

## Hacks
1. Mount your workspace to /home/ws. Then you can access your projects easily.
2. Mount additional workspaces or data disks to /home/ws1, /home/ws2, /home/host, /home/data, etc as
you want.
