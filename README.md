
# pascal-algorithms

Messing around with algorithms using FreePascal.

## But why?

I've always had a bit of a soft spot for Pascal and its various dialects. When I was an undergrad I did a lot of lab assignments in Borland [Turbo Pascal](https://en.wikipedia.org/wiki/Turbo_Pascal) and later did some of my first paid dev work in [Delphi](https://en.wikipedia.org/wiki/Delphi_(software)) and [C++Builder](https://en.wikipedia.org/wiki/C%2B%2BBuilder). This legacy lives on through projects like [Free Pascal](https://www.freepascal.org/) and [Lazarus IDE](https://www.lazarus-ide.org/).

My library of Pascal books has long since been scattered to the winds, but one book I held on to was Herb Schildt's Advanced Modula-2 (McGraw Hill, 1987), which has the advantages of being light in form factor, giving some concise history of the Pascal language (up until the mid-80s at least), and mostly being an introductory algorithms book that just happens to have examples in Modula-2. It is by now a crazily obscure book, but I am inspired to capture some learnings from it.

Is it a pain to work with compared to Python or C? Absolutely.

## Why is this code so hard to read?

Mostly because it doesn't follow [functional programming](https://en.wikipedia.org/wiki/Functional_programming) paradigms. That may sound glib, but a lot of these algorithms type problems are much easier to follow when implemented as a Lisp-like decomposition into a chain of data transforms.

Another reason is because Pascal is fairly verbose. It may feel clumsy, but among the advantages are that there are fewer ways to get clever with the syntax, and it's a little easier on compiler implementors. Still, if you don't like what you see, be thankful that you're coding in the 21st century.

Modula improvements to the Pascal language would have helped matters a little bit but it seems like Modula only ever caught on in expert circles and then died off.

## I know C, what am I looking at?

If you squint you can kinda make out the C-like nature of Pascal (or their shared Algol lineage, perhaps.)

* `begin` and `end` enclose scope, like `{` and `}`
* local variables go at the top of a function, using a `var` block
* `:=` is assignment `=`
* `=` is comparison `==`
* `procedure` has no return value, `function` does

## Conversions from Modula-2 to FreePascal

* FreePascal is case insensitive
* `begin` keyword added to the start of scope blocks
* `cardinal` type replaced with `uint32`
* `for ... by -1` replaced with `downto`

## References

* [FreePascal Docs](https://www.freepascal.org/docs.html)
* [Object Pascal](https://en.wikipedia.org/wiki/Object_Pascal)
* [Modula Language on C2 Wiki](https://wiki.c2.com/?ModulaLanguage)
* [Gnu Modula-2](http://nongnu.org/gm2/homepage.html)
* [Modula-3 Resource Page](http://www.modula3.org/)
