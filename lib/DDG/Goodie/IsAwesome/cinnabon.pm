package DDG::Goodie::IsAwesome::cinnabon;
# ABSTRACT: cinnabon's first Goodie

use DDG::Goodie;

zci answer_type => "is_awesome_cinnabon";
zci is_cached => 1;

name "IsAwesome cinnabon";
description "My first Goodie, it let's the world know that cinnabon is awesome";
primary_example_queries "duckduckhack cinnabon";
category "special";
topics "special_interest", "geek";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/IsAwesome/cinnabon.pm";
attribution github => ["https://github.com/cinnabon", "cinnabon"];

triggers start => "duckduckhack cinnabon";
handle remainder => sub {
	return if $_;
	return "cinnabon is awesome and has successfully completed the DuckDuckHack Goodie tutorial!";
};

1;