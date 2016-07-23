#sss.sh - Super Simple Screenshot Sharing

In your server:
- Edit `nginx-site` and `sss.sh` with the appropriate paths and URLs, and
  create the screenshot directory
- Install nginx
- If on Debian, put `nginx-site` in `/etc/nginx/sites-available/` and symlink
  it to `/etc/nginx/sites-enabled`. Otherwise append it to `/etc/nginx.conf`. 

In your terminals:
- Copy `sss.sh` in your `$PATH`.
