import os
import sys
from pathlib import Path

sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from utils.counter_utils import read_write_counter

counter_path = Path(__file__).parent / "counter.txt"
result_path = Path(__file__).parent.parent / "results"
suite_1 = Path(__file__).parent.parent / "test_suite"

cmd = "robot --outputdir {} --timestampoutputs --log log.html --report report.html " \
      "{}".format(result_path, suite_1)

read_write_counter(counter_path)
os.system(cmd)
