var Song = function(lyrics) {
    var verseArray = lyrics.split('\n\n');
    
    var verse = function(start) {
        return verseArray[start - 1] + '\n';
    };

    var verses = function(start, end) {
        var list = verseArray.slice(start -1, end);
        return list.join("\n\n") + "\n\n";
    };

    return {
        verse  : verse,
        verses : verses
    };
};

var oldLady = "\
I know an old lady who swallowed a fly.\n\
I don't know why she swallowed the fly. Perhaps she'll die.\n\
\n\
I know an old lady who swallowed a spider.\n\
It wriggled and jiggled and tickled inside her.\n\
She swallowed the spider to catch the fly.\n\
I don't know why she swallowed the fly. Perhaps she'll die.\n\
\n\
I know an old lady who swallowed a bird.\n\
How absurd to swallow a bird!\n\
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n\
She swallowed the spider to catch the fly.\n\
I don't know why she swallowed the fly. Perhaps she'll die.\n\
\n\
I know an old lady who swallowed a cat.\n\
Imagine that, to swallow a cat!\n\
She swallowed the cat to catch the bird.\n\
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n\
She swallowed the spider to catch the fly.\n\
I don't know why she swallowed the fly. Perhaps she'll die.\n\
\n\
I know an old lady who swallowed a dog.\n\
What a hog, to swallow a dog!\n\
She swallowed the dog to catch the cat.\n\
She swallowed the cat to catch the bird.\n\
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n\
She swallowed the spider to catch the fly.\n\
I don't know why she swallowed the fly. Perhaps she'll die.\n\
\n\
I know an old lady who swallowed a goat.\n\
Just opened her throat and swallowed a goat!\n\
She swallowed the goat to catch the dog.\n\
She swallowed the dog to catch the cat.\n\
She swallowed the cat to catch the bird.\n\
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n\
She swallowed the spider to catch the fly.\n\
I don't know why she swallowed the fly. Perhaps she'll die.\n\
\n\
I know an old lady who swallowed a cow.\n\
I don't know how she swallowed a cow!\n\
She swallowed the cow to catch the goat.\n\
She swallowed the goat to catch the dog.\n\
She swallowed the dog to catch the cat.\n\
She swallowed the cat to catch the bird.\n\
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n\
She swallowed the spider to catch the fly.\n\
I don't know why she swallowed the fly. Perhaps she'll die.\n\
\n\
I know an old lady who swallowed a horse.\n\
She's dead, of course!";

module.exports = Song(oldLady);