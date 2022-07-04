from robotlibcore import keyword
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn


class Helpers:
    """Custom keywords written in Python"""
    def __init__(self):
        self.BuiltIn = BuiltIn()

    @keyword
    def text_to_sentences(self, text):
        if ";" not in text:
            self.BuiltIn.fail(msg="Error extracting the tokens")
        sentences = text.split(';')
        print(sentences)
        return sentences

    @keyword
    def convert_to_hours_and_minutes(self, seconds):
        """ Converts seconds in hours and minutes """
        m, s = divmod(int(seconds), 60)
        h, m = divmod(m, 60)
        return h, m
