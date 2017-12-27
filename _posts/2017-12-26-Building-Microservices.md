---
layout: post
title: "독서 - Building Microservices"
date: 2017-12-26 20:00
categories: book
---

![Image of Building Microservices](https://covers.oreillystatic.com/images/0636920033158/lrg.jpg)

나의 첫번째 전자책이다. Kindle Paperwhite 는 Highlight 기능을 지원하는데, 책을 읽으면서 표시해두었던 부분들에 대한 생각을 정리해보고자 한다.

###  정리

> I realized that while infrastructure automation, testing, and continuous delivery techniques could help, if the fundamental design of the system doesn't make it easy to make changes, then there are limits to what can be accomplished.

특히 Legacy System 을 개선할 때 마음 속에 염두어야 할 내용이라고 생각한다. 개인적으로는 Design 이 잘못되면 할 수 있는 게 거의 없다고 생각한다.

> With synchronous communication, a call is made to a remote servcer, which blocks until the operation completes. With asynchronous communication the caller doesn't wait for the operation to complete before returning, and may not even care whether or not the operation completes at all.

마지막 문장은 데이터 관점에서는 Strongly Consistent 에서 Eventually Consistent 로의 변경을 의미하기 때문에 당연한 이야기지만 중요한 내용이라고 생각된다.

> Event-based systems by their nature are asynchronous. The smarts are more evenly distributed-that is, the business logic is not centrailized into core brains, but instead pushed out more evenly to the various collaborators. Event-based collaboration is also highly decoupled.

Java Stream 혹은 ReactiveX Observable 의 개념을 System 설계에 적용한다는 느낌이랄까..

> Locks on resources can lead to contention, making scaling systems much more difficult, especially in the context of distributed systems.

개인적으로 Distributed System 을 설계할 때 Lock 은 마지막 선택지라고 생각한다. 특히 Database Operation 을 동반하는 경우라면 정말 피하고 싶은 것이 Lock 이다. Optimistic Locking 도 꺼려진다.

> Another popular option, especially when dealing with a large number of micorservices, is to use a dedicated system for providing configuration, which we'll explore more in Chapter 11.

동감하는 부분이며 Configuration Service 가 UI 와 Audit Trail 을 지원한다면 더욱 멋질 것 같다.

> With canary releasing, we are verifying our newly deployed software by directing amounts of production traffic against the system to see if it performs as expected. "Performing as expected" can cover a number of thins, both functional and nonfunctional.

Canary 를 준비할 때 어려운 점은 Database 관리라고 생각한다. 만약 Roll-back 을 해야하는 상황이 올 때 이미 Database 에 Commit 된 내용들은 어떻게 처리할 것인가라는 질문에 답할 수 있어야 한다.

> When you have a call chain of multiple sychronous calls, if any part of the chani starts acting slowly, everything is affected, potentially leading to a significant impact.

전체 System 의 성능은 가장 성능이 안 좋은 Component 의 성능이다.

> In idempotent operations, the outcome doesn't change after the first application, even if the operation is subsequently applied multiple times. If operations are idempotent, we can repeat the call multiple times without adverse impact. This is very useful when we want to replay messages that we aren't sure have been processed, a common way of recovering from error.

Asynchronous System 을 설계할 때 가장 중요한 점이라고 생각한다. Communication Channel (e.g. message queue) 은 언제든지 실패할 수 있기 때문에 Recovery 과정은 필연적으로 따라온다. 이 때 Idempotency 가 없다면, Blind Retry 가 불가능하게 되고, 이로 인해 발생하는 Overhead 는 이루 형용할 수가 없다.

> As Jeff Dean said in his presentation "Challenges in Building Large-Scale Information Retrieval Systems" (WSDM 2009 conference), you should "design for ~10x growth, but plan to rewrite before ~100x."

기억이 확실치는 않지만 Presentation 을 보려고 표시해두었던 것 같다. [Jeff Dean](https://en.wikipedia.org/wiki/Jeff_Dean_(computer_scientist)) 이라는 이름에서 이미 봐야겠다고 생각했었을거다. 매우 도움이 될 것 같은 느낌이다.

> The need to change our systems to deal with scale isn't a sign of failure. It is a sign of success.

200% 공감한다.

> If our system has no partition tolerance, it can't run over a network. In other words, it needs to be a single process operating locally. CA systems don't exist in distributed systems.

Distributed Systems 에서는 결국 C 와 A 의 문제인 것이다.

> Consider using blue/green or canary release techniques to separate deployment from release, reducing the risk of a release going wrong.

나에게 완전한 Ownership 이 있다면 선택이 아닌 필수라고 생각하는 것들이다.

### 총평

초심자보다는 경험있는 개발자들이 생각을 정리해볼 겸 읽어보면 좋은 책이라고 생각한다.
