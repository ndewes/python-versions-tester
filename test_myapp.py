# Tests for myapp
import pytest
import myapp
from base64 import b64encode


def test_randomness():
    assert myapp.get_random_bytes_b64(10) != myapp.get_random_bytes_b64(10), 'Got the same string twice'

@pytest.mark.parametrize("value", [5, 10, 20])
def test_length(value):
    assert len(b64encode(b'X'*value)) == len(myapp.get_random_bytes_b64(value)), 'Length of result does not match'
