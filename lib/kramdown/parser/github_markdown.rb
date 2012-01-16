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
require 'kramdown/parser/kramdown'

module Kramdown
  module Parser
    # Used for parsing a document in GithubMarkdown format.
    #
    # This parser is based on the kramdown parser and removes the parser methods for the additional
    # non-Markdown features. However, since some things are handled differently by the kramdown
    # parser methods (like deciding when a list item contains just text), this parser differs from
    # real Markdown parsers in some respects.
    #
    # Note, though, that the parser basically fails just one of the Markdown test cases (some others
    # also fail but those failures are negligible).
    class GithubMarkdown < Markdown
      def initialize(source, options)
        super
        @block_parsers.unshift(:github_codeblock)
      end
    end
  end
end

require 'kramdown/parser/github_markdown/github_codeblock'
