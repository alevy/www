## Research

#### Comet
Comet extended the distributed key-value storage abstraction to facilitate the sharing of a single storage system by applications with diverse needs, allowing them to reap the consolidation benefits inherent in today's massive clouds. Distributed key-value storage systems are widely used in corporations and across the Internet. We wanted to greatly expand the application space for these systems through application-specific customization. We designed and implemented Comet, an extensible, distributed key-value store. Each Comet node stores a collection of active storage objects (ASOs) that consist of a key, a value, and a set of handlers. Comet handlers run as a result of timers or storage operations, such as get or put, allowing an ASO to take dynamic, application-specific actions to customize its behavior. Handlers are written in a simple sandboxed extension language, providing safety and isolation properties. We implemented a Comet prototype for the Vuze distributed hash table, deployed Comet nodes on Vuze from PlanetLab, and built and evaluated over a dozen Comet applications.

#### Vanish
Today's technical and legal landscape presents formidable challenges to personal data privacy. First, our increasing reliance on Web services causes personal data to be cached, copied, and archived by third parties, often without our knowledge or control. Second, the disclosure of private data has become commonplace due to carelessness, theft, or legal actions. In Vanish our goal was to protect the privacy of past, archived data - such as copies of e-mails maintained by an email provider - against accidental, malicious, and legal attacks. Specifically, we wanted to ensure that all copies of data become unreadable after a user-specified time, without any specific action on the part of a user, and even if an attacker obtains both a cached copy of that data and the user’s cryptographic keys and passwords. Vanish achieved this by integrating cryptographic techniques with global-scale, peer-to-peer, distributed hash tables.

#### Workload Characterization
During summer 2010, I worked with Joseph L. Hellerstein at Google. We targeted a set of key questions that developers scheduling jobs on a cluster care about, but are hard or impossible to answer with existing tools: Will a job schedule? What changes to a job would make it more likely to schedule? Which resources can a job consume more of without impacting the ability to schedule it? Our challenge was to define metrics that accurately and predictively describe a job given the cluster it was scheduled on, and to compute those metrics efficiently enough to allow for interactive exploration of job configuration. We chose to estimate the number of scheduling slots available to a job over the past two weeks. However, computing the actual count is too expensive to do interactively. Our approach was to perform continuous statistical characterization of machine loads, and to compute an estimate of the number of slots based on that characterization. As a result we were able to build tools that give developers a meaningful way to compare different job configurations.

### Publications

1. __Comet__: An active distributed key-value store. With [Roxana Geambasu], [Tadayoshi Kohno][], [Arvind Krishnamurthy][] and [Hank Levy][]. In Proceedings of OSDI, Vancouver, Canada, October 2010. 
Paper: _\[[PDF](papers/comet-osdi2010.pdf)\]_ Poster: _\[[PDF](papers/comet-poster.pdf)\]_

2. __Vanish__: Increasing Data Privacy with DHTs that forget. With [Roxana Geambasu][], [Tadayoshi Kohno][], and [Hank Levy][]. In Proceedings of the USENIX Security Symposium, Montreal, Canada, August 2009.
Won the Outstanding Student Paper Award.
Paper: _\[[PDF](papers/vanish-usenixsec09.pdf)\]_
