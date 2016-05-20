
## Current Projects

### Tock OS

Embedded operating systems have traditionally been limited to libraries that
abstract hardware and implement common utilities. These systems provide only
limited mechanisms, if any, to ensure the safety of drivers or isolate
applications. Instead, developers must assume that all code is equally
trustworthy and bug free. As embedded systems strive to provide additional
features, developers draw on third-party source code for libraries, drivers and
applications. Incorporating this external code safely is difficult in memory
constrained, low power embedded microcontrollers that lack virtual memory.
Processes, for example, require per-component stacks. On a 16-64 kB
microcontroller, this can be prohibitive.

Tock is a safe, multitasking operating system for memory constrained devices.
Tock is written in Rust, a type-safe systems language with no runtime or
garbage collector.  Tock uses the Rust type system to enforce safety of
components, called capsules, in a single-threaded event-driven kernel. In
addition, Tock uses remaining memory to support processes written in any
language. To support safe event-driven code that responds to requests from
processes, Tock introduces two new abstractions: memory containers and memory
grants.

### Beetle

The next generation of computing peripherals will be low-power ubiquitous
computing devices such as door locks, smart watches, and heart rate monitors.
Bluetooth Low Energy is a primary protocol for connecting such peripherals to
mobile and gateway devices. Current operating system support for Bluetooth Low
Energy forces peripherals into vertical application silos. As a result, simple,
intuitive applications such as opening a door with a smart watch or
simultaneously logging and viewing heart rate data are impossible. Beetle is a
new hardware interface that virtualizes peripherals at the application layer,
allowing safe access by multiple programs without requiring the operating
system to understand hardware functionality, fine-grained access control to
peripheral device resources, and transparent access to peripherals connected
over the network.

### Hails

Hails is a web platform framework that obviates the traditional trade-off in
extensible web applications between privacy/confidentiality and extensibility.
Hails leverages language-level information flow control in Haskell to enable
feature rich applications to share data while ensuring that security policies
are carried over and enforced along with the data.  Traditionally, web
applications allow extensibility by exposing an API.  "Blessed" third-party apps
that granted access to the API (or a subset of the API) are entrusted with
(often sensitive) user data to do what they please. This is problematic not only
because third-party app developers may be malicious, but more practically
because it reduces the trustworthiness of a platform to the least trustworthy
third-party developers (who is often incentivized to prioritize features over
security). Hails addresses this problem by tying security policies to data using
information-flow-control labels. In Hails, a common, trusted, platform ensures
that apps that have seen sensitive data may communicate with users, files,
database etc, that are not privileged to see that data. Moreover, as opposed to
traditional platforms where there is a host application that has more access to
data than third-party apps, in Hails all apps have the same access to data. This
enables developers to build complete alternatives to applications without
requiring users to migrate their data or give up network effects.

## Previous Projects

### Comet

Comet extended the distributed key-value storage abstraction to facilitate the
sharing of a single storage system by applications with diverse needs, allowing
them to reap the consolidation benefits inherent in today's massive clouds.
Distributed key-value storage systems are widely used in corporations and across
the Internet. We wanted to greatly expand the application space for these
systems through application-specific customization.  We designed and implemented
Comet, an extensible, distributed key-value store.  Each Comet node stores a
collection of active storage objects (ASOs) that consist of a key, a value, and
a set of handlers. Comet handlers run as a result of timers or storage
operations, such as get or put, allowing an ASO to take dynamic,
application-specific actions to customize its behavior. Handlers are written in
a simple sandboxed extension language, providing safety and isolation
properties. We implemented a Comet prototype for the Vuze distributed hash
table, deployed Comet nodes on Vuze from PlanetLab, and built and evaluated over
a dozen Comet applications.

### Vanish

Today's technical and legal landscape presents formidable challenges to personal
data privacy. First, our increasing reliance on Web services causes personal
data to be cached, copied, and archived by third parties, often without our
knowledge or control. Second, the disclosure of private data has become
commonplace due to carelessness, theft, or legal actions. In Vanish our goal was
to protect the privacy of past, archived data - such as copies of e-mails
maintained by an email provider - against accidental, malicious, and legal
attacks. Specifically, we wanted to ensure that all copies of data become
unreadable after a user-specified time, without any specific action on the part
of a user, and even if an attacker obtains both a cached copy of that data and
the user’s cryptographic keys and passwords. Vanish achieved this by integrating
cryptographic techniques with global-scale, peer-to-peer, distributed hash
tables.

### Workload Characterization

During summer 2010, I worked with Joseph L. Hellerstein at Google. We targeted a
set of key questions that developers scheduling jobs on a cluster care about,
but are hard or impossible to answer with existing tools: Will a job schedule?
What changes to a job would make it more likely to schedule? Which resources can
a job consume more of without impacting the ability to schedule it? Our
challenge was to define metrics that accurately and predictively describe a job
given the cluster it was scheduled on, and to compute those metrics efficiently
enough to allow for interactive exploration of job configuration. We chose to
estimate the number of scheduling slots available to a job over the past two
weeks. However, computing the actual count is too expensive to do interactively.
Our approach was to perform continuous statistical characterization of machine
loads, and to compute an estimate of the number of slots based on that
characterization. As a result we were able to build tools that give developers a
meaningful way to compare different job configurations.

