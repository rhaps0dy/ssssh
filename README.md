#sss.sh - Super Simple Screenshot Sharing

In your server:
- Create the `/home/<user>/screenshots` directory and copy `index.html` to it.
- Edit `nginx-site` and `sss.sh` with the appropriate paths and URLs.
- Install nginx.
- If on Debian, put `nginx-site` in `/etc/nginx/sites-available/` and symlink
  it to `/etc/nginx/sites-enabled`. Otherwise append it to `/etc/nginx.conf`. 

In your terminals:
- Copy `sss.sh` in your `$PATH`.
