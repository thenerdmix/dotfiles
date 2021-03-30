import re
import threading

import core.module
import core.widget
import core.input
import core.decorators

import util.cli
import util.format
import util.location

import fontawesome as fa


def get_redshift_value(module):
    widget = module.widget()
    f = open("/home/checco/log/current_temp.txt", "r")
    stringa = f.readline().strip()
    f.close()
    widget.set("temp", stringa+'K \uf06d')
    core.event.trigger("update", [widget.module.id], redraw_only=True)


class Module(core.module.Module):
    @core.decorators.every(seconds=1)
    def __init__(self, config, theme):
        super().__init__(config, theme, core.widget.Widget(self.text))

        self.__thread = None

    def text(self, widget):
        val = widget.get("temp", "n/a")
        return val

    def update(self):
        if self.__thread is not None and self.__thread.is_alive():
            return
        self.__thread = threading.Thread(target=get_redshift_value, args=(self,))
        self.__thread.start()
