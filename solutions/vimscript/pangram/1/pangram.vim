"
" Determine if a sentence is a pangram.
"
" A pangram is a sentence using every letter of the alphabet at least once.
"
" The alphabet used consists of ASCII letters a to z, inclusive, and is case
" insensitive. Input will not contain non-ASCII symbols.
"
" Example:
"
"     :echo IsPangram('The quick brown fox jumps over the lazy dog')
"     1
"     :echo IsPangram('The quick brown fox jumps over the lazy do')
"     0
"

function! IsPangram(sentence) abort
    "Convert the sentence to lower case, convert to a list, sort and remove
    "duplicates.
    "Then get the index for a and z (if a or z are missing, fail)
    "get the length of the slice from a to z if the length is 26, it's a
    "pangram
    "
    "I seems as if vimscript does not have a set. With a set this would be
    "easier
    let l:pangram = tolower(a:sentence)
    let l:pangram = split(l:pangram, '\zs')
    let l:pangram = uniq(sort(l:pangram))
    let l:findA = index(l:pangram,'a')
    let l:findZ = index(l:pangram,'z')
    if l:findA <0 || l:findZ < 0
        return 0 " no a and no z, so not complete
    endif
    if len(l:pangram[findA:findZ]) == 26
        return 1
    else
        return 0
    endif


   
endfunction
