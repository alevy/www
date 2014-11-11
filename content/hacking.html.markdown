## Projects

### Postgresql-ORM
_Source: [GitStar](http://gitstar.com/dm/postgresql-orm)_
_Package: [Hackage](http://hackage.haskell.org/package/postgresql-orm)_

---

### Simple
_Source: [GitStar](http://gitstar.com/alevy/simple)_
_Package: [Hackage](http://hackage.haskell.org/package/simple)_

---

### MemJS
_Source: [GitHub](http://github.com/alevy/memjs)_

MemJS is a pure Node.js client library for accessing the MemCachier service and other memcache servers. It uses the binary protocol and support SASL authentication.

---

### iterio-server
_Source: [GitHub](http://github.com/alevy/iterio-server)_
_Package: [Hackage](http://hackage.haskell.org/package/iterio-server)_

A web-server framework for Haskell based on [David Mazières][]'s iteratee libarary, [IterIO](http://hackage.haskell.org/package/iterIO).

---

### Coypond
_Source: [GitHub](http://github.com/alevy/coypond)_
_Gem: [RubyGems](https://rubygems.org/gems/coypond)_

Coypond is a semantic grep-like tool for Ruby. You can use coypond to search through ruby code for class, module, or method definitions. It indexes the class, module and method names in a Ruby code base, noting the files they were found in and the locations within those files. It can search through specific files, source code directory trees, or through locally installed gems.

Coypond uses ripper (a built in library as of Ruby 1.9) to generate parse trees from Ruby source files. These parse trees are then use to create an inverted index of the code, annotated with semantic information like whether the definition is a class, module or method.

---

### Jsss - JavaScript Secret Sharing
_Source: [GitHub](http://github.com/alevy/jsss)_

A [Shamir Secret Sharing](http://en.wikipedia.org/wiki/Shamir's_Secret_Sharing) library in JavaScript. Shamir Secret Sharing splits data into `n` shares, such that only `k (<=n)` are needed to reconstruct the original data. Possession of any fewer than `k` shares discloses nothing about the original data. The algorithm generates shares by evaluating a `k-1` polynomial, based on the data, at `n` arbitrary points. We get the data back by performing polynomial interpolation over `k` of the shares.

Javascript uses variable length numbers natively but breaks arbitrarily when computing large numbers. To mitigate this, the library uses [Matthew Crumley](http://silentmatt.com/)'s [BigInteger](http://github.com/silentmatt/javascript-biginteger) library and a rational number class that uses fractions under the hood to compute arbitrarily complex numbers accurately. This reduces the speed of generating and recombining shares, but it computation is not feasible and pretty low values of `k` otherwise.

---

### VoteLight

_Check it out! [VoteLight.com](http://votelight.com)_

VoteLight was a project I hacked together with [Aaron][Aaron Block] when I visited him in LA. The company where Aaron previously worked, GridPoint, used MS Outlook & Exchange for e-mail, which has built in mini-surveys that can be attached to e-mails and update _in-message_ when respondents vote. GridPoint used this feature to plan after-work happy hours etc, which is awesome! His new company, [SkylineInnovations](http://www.skylineinnovations.com), is getting with the cloudy goodness by using Google Apps for hosted e-mail, which is also awesome! However, Google has no similar feature, which is not awesome :(...

VoteLight does just this. It's super simple, and runs on AppEngine. It uses a Google Charts for the graphs, and just embeds a dynamic image in e-mail messages sent, which update to the latest state of the survey every time the message is viewed.

---

### Breadcrumbs - a travel blog CMS

_Source: [GitHub](http://github.com/alevy/breadcrumbs)_

I built the first version of this when I was in Central America in Winter 2011, used it to put up a bunch of content for that trip and my visits to grad schools - it was great. Later, I rebuilt it to use Rails 3.1, lost all of my data and started using the new version for my trip to Berlin with Courty.

The only real benefit over any other CMS is that checking into a location (like a city somewhere in Nicaragua) is a built in feature and pretty easy. It means that I can update my blog without writing anything, and have to checkin with my family a little less often. Checkins are strung together into trips, and posts can be tied to those trips, or even specific checkins. This means that getting an overview of where/how someone has traveled and what they did along the way is easy. Unfortunately, it is highly feature incomplete...
