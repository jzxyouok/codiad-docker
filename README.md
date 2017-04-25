# codiad-docker
**Latest version: 2.8.1**

Run a Codiad container which serves at port 80.

## Usage
1. See run_codiad.sh for an example of starting the server.
2. Visit the server to finish initiation.

## Hacks
1. Mount your workspace to /home/ws. Then you can access your projects easily.
2. Remember to add www-data to your group, and projects are writable by it:

```usermod -aG www-data $USER```
3. Mount additional workspaces or data disks to /home/ws1, /home/ws2, /home/host, /home/data, etc as
you want.
