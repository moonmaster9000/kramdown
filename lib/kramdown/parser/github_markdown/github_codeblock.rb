# -*- coding: utf-8 -*-
#
#--
# Copyright (C) 2009-2010 Thomas Leitner <t_leitner@gmx.at>
#
# This file is part of kramdown.
#
# kramdown is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#++
#

require 'kramdown/parser/kramdown/blank_line'
require 'kramdown/parser/kramdown/extensions'
require 'kramdown/parser/kramdown/eob'
require 'kramdown/parser/kramdown/paragraph'

module Kramdown
  module Parser
    class GithubMarkdown
      GITHUB_CODEBLOCK_START = /^```/
      GITHUB_CODEBLOCK_MATCH = /^```([^\s]*)?\s*?\n(.*?)^```\s*\n/m
      
      # Parse the indented codeblock at the current location.
      def parse_github_codeblock
        data = @src.scan(self.class::GITHUB_CODEBLOCK_MATCH)
        matches = data.match GITHUB_CODEBLOCK_MATCH
        @tree.children << new_block_el(:codeblock, matches[2], nil, {"language" => matches[1]})
        true
      end
      define_parser(:github_codeblock, GITHUB_CODEBLOCK_START)
    end
  end
end
