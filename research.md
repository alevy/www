---
title: Projects
layout: default
---

I'm particularly excited about developing and deploying research beyond
publication. The [active](#active) projects below may are those that have
ongoing research associated with them, or are past the point of the main
research goals but I still hack on them actively.

# Active

## User-centric cloud computing

* Information Flow Control for FaaS
* End-to-end secure applications
* Verifiable decentralized computation with incentives
* Defending you from advertising networks

## Less may be more in the cloud

* Multi-dispatch consistency models

* Fixpoint: a functional approach to burst scalable computations

* Distributed debugging

## Foundational Secure Systems

* Property-testing for low-level concurrent code

* Using types to enforce safety properties in the kernel

* Leak-Avoidant Resource Provisioners (LARPs)

    Conventional wisdom suggests that side-channels are unavoidable in secure
    computer systems. Practitioners treat side-channels as a game of whack-a-mole,
    in which they respond to newly discovered side-channel with ad-hoc mitigations
    or defenses. Often these defenses and mitigations come with large performance
    penalties, and practitioners have no way to reason about the security vs.
    performance trade-offs they face.

    In this project, we aim to design a framework for system builders to eliminate
    a large class of side-channels, by design. In particular, we rely on a novel
    insight that eliminating many side-channels can be viewed as a problem of
    designing provisioners for shared resources that don't leak information through
    provisioning decisions. While most resource provisioners, such as CPU
    schedulers, memory allocators, and I/O device multiplexers, are design to
    achieve fair sharing or optimize utilization, we propose a new class of _Leak
    Avoidant Resource Provisioners_ (or _LARPs_) that avoid information leaks by
    construction, and optimize for performance or fairness subject to that
    constraint.

## Tock OS

<div class="video-content">
<iframe width="100%" height="100%" src="https://www.youtube.com/embed/BvA5fICr5Gk" frameborder="0"
allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>


Low-power microcontrollers are increasingly prevalent in the Internet
of Things.  These devices have extreme memory constraints---typically
16-512 kB of RAM.  They also lack hardware features, such as virtual
memory, that are integral to the design of modern operating systems.
These constraints preclude traditional isolation abstractions, such as
processes or microkernel services, leading to systems in which every
line of code is fully trusted.

The result is that device manufacturers cannot safely run third-party
applications on their microcontroller systems. Worse, these siloed
devices end up incorporating large quantities of third-party code
_anyway_, in the form of open source libraries or device drivers.  A
bug in any of this code makes the whole system vulnerable to
attackers.  If the Internet of Things continues to grow as predicted,
we risk ending up with vulnerable and siloed devices running the world
around us.

Tock is a new operating system for microcontrollers. Tock makes it safe for
end-users to run untrusted third-party applications and protects the kernel
from buggy drivers.  Tock isolates the memory and performance of applications
using a preemptive process-like abstraction enforced in hardware by the MPU.
The kernel is written in Rust and provides a type-safe API for building kernel
components that ensures isolation of memory faults at virtually no runtime
cost.

# Previous

## Hails

A small number of large web sites, such as Facebook, curate most user data
online.  On the surface, these sites are becoming software _platforms_ by
giving third-party applications access to some data via APIs. In practice,
though, most data access is reserved for the platform itself since end-users
have to trust third-party applications completely with whatever data the
applications can access.

The web platform restricts _which_ applications can access data, but not _how_
applications use the data. For example, if Facebook allows a third-party
application to access a user's photos, it's up to that application to make sure
the photos are not displayed to other, unauthorized users. Is it possible to
ensure end-user security policies are enforced end-to-end without restricting
third-party applications' capabilities?

One opportunity is a shift in how developers build and deploy web applications.
Many developers are now deploying web applications on Platforms-as-a-Service
(PaaS), like Heroku, Amazon Beanstalk, and Google AppEngine. These platforms
alleviate the need for developers to manage their own servers. In exchange,
developers adhere to the platform's programming conventions, such as choice of
language, and build applications to work with databases and other services
available on the platform.

Perhaps the deployment platform can enforce security policies on user data
end-to-end?  Instead of restricting which applications can access data, the
trusted platform can track data across applications. This matches the policies
users actually care about: who can see their data, not which developer's code
can manipulate or access it along the way.

Hails is a framework specifically designed to address the developer
barriers erected by sites such as Facebook. In Hails, third-party applications
run on the platform's servers instead of servers run by the developer. The
trusted platform ensures that applications that have seen sensitive data can't
communicate with users, files, databases, etc., that are not authorized to see
that data. However, all functionality is implemented by the applications
themselves. For example, we created a GitHub-like code sharing platform built
entirely of untrusted applications.

## Beetle


<div class="video-content">
<iframe
src="https://www.youtube.com/embed/eW63Q4cRMj0?rel=0" frameborder="0"
allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>

Mobile phones, wireless routers, and other gateway devices allow wireless
peripherals to communicate with local and cloud applications using specialized
networking protocols like Bluetooth Low Energy. Unfortunately, intuitively
simple use cases, such as logging heart rate in one application while viewing
it in another, are impossible. Current operating systems simply do not allow
applications to share access to Bluetooth Low Energy peripherals safely,
resulting in barriers for developers.

Fortunately, GATT, the application layer protocol Bluetooth Low Energy devices
already use to communicate with applications, presents an opportunity. GATT is
an ideal protocol for multiplexing access to devices. It has an attribute
data-model. End-points perform operations such as `GET`, `WRITE`, and `NOTIFY`
on the attributes. This is enough information for the operating system to let
applications safely share access to peripherals without explicit coordination,
and without changing the peripherals or the applications.

Beetle is a new hardware interface for Bluetooth Low Energy. Beetle interposes
on the GATT protocol between applications and devices. The system can
distinguish between, say, a command to discover peripheral capabilities or
fetch a reading from one that unsubscribes from future sensor reading updates.
As a result, Beetle allows shared access to peripherals from multiple
applications, fine-grained access control to peripheral resources, and
transparent access to peripherals over a network.

Because GATT is not specific to any particular class of peripheral devices,
Beetle works with existing peripherals and applications without requiring the
operating system to understand any specific peripheral's functionality.

## Stickler

Website  publishers  can  derive  enormous  performance  benefits  and  cost
savings  by  directing  traffic  to  their sites  through  content
distribution  networks  (CDNs).  However, publishers  who  use  CDNs  today
must  trust  their  CDN  not  to modify  the  site's  JavaScript,  CSS,  images
or  other  media en route to end users. A CDN that violates this trust could
inject ads into  websites,  downsample  media  to  save  bandwidth  or,  worse,
inject  malicious  JavaScript  code  to  steal  user  secrets  it  could not
otherwise  access.  Stickler is a  system  for  website publishers
that guarantees the end-to-end authenticity of content served  to  end  users
while  simultaneously  allowing  publishers to  reap  the  benefits  of  CDNs.
Crucially,  Stickler  achieves  these guarantees without requiring
modifications  to  the  browser.

