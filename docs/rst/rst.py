import docutils.core
import sys

docutils.core.publish_file(
  source_path = '{}.rst'.format(sys.argv[1]),
  destination_path = '../html/{}.html'.format(sys.argv[1]),
  writer_name = 'html'
)