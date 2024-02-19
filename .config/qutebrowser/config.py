url.searchengines {
        'DEFAULT': 'https://searx.be/?q={}'
        }
url.default_page https://searx.be/
url.start_pages https://searx.be/
completion.cmd_history_max_items 0
content.javascript.enabled false
bind ,m spawn mpv {url}
bind ,M hint links spawn mpv {hint-url}
colors.webpage.darkmode.enabled true
completion.web_history.max_items 0
content.autoplay false
content.blocking.method both 
content.canvas_reading false
content.cookies.accept never
content.cookies.store false
content.default_encoding utf-8
content.geolocation false
confirm_quit downloads
content.desktop_capture ask
content.blocking.enabled true
auto_save.session false
content.headers.user_agent Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0  
content.headers.accept_language en-US,en;q=0.5
content.headers.custom '{"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}'
content.webgl false
content.notifications.enabled false
content.pdfjs true
content.persistent_storage false
content.headers.do_not_track true
content.private_browsing true
downloads.location.directory ~/dl
downloads.location.remember false
scrolling.bar never
statusbar.position top
editor.command nvim







"""
for more settings check out
https://qutebrowser.org/doc/help/settings.html
"""

# ================== Youtube Add Blocking ======================= {{{
def filter_yt(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    if (
        url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat=" in url.query()
    ):
        info.block()


interceptor.register(filter_yt)
# }}}

