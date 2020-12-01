import unittest


from secwall.app_context import *


class TestAppContext(unittest.TestCase):
    def test_stub(self):
        print(f"stub for {__name__}")
        assert 1 == 1


if __name__ == "__main__":
    print(__name__)
