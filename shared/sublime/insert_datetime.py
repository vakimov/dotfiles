import sublime, sublime_plugin, datetime, locale


class InsertDatetimeCommand(sublime_plugin.TextCommand):

    def run(self, edit):
        sel = self.view.sel();
        locale.setlocale(locale.LC_ALL, 'ru_RU.UTF-8')
        dt_str = datetime.datetime.now().strftime('%a %d %b %Y %H:%M\n---')
        for s in sel:
            self.view.replace(edit, s, dt_str)
