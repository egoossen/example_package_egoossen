import pytest
import example_package_egoossen.example as example

def test_add_one():
    assert example.add_one(7) == 8
