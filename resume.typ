#set document(title: [Jungseok Lee])
#set list(marker: ([•]), spacing: 1.0em)
#show list: set block(spacing: 1.0em)
#show link: underline

#let resume-body = [

#title()

Software Engineer with 10+ years: from silicon and Linux Kernel to Tier-0 AWS. Deep in reliability; broad across compute, storage, and ML.

Email: jungseoklee85 [at] gmail (dot) com | Location: Irvine, CA

= Work

See #link("https://jungseoklee.github.io/projects")[timeline and details].

- Senior Software Engineer, Amazon Web Services, Auto Scaling, 2017 - 2025 (promoted in 2021)
  - Scaled EC2 Auto Scaling to 50+ regions, serving 50% of global EC2 control plane traffic.
  - Shipped 10+ #link("https://aws.amazon.com/ec2/autoscaling/")[EC2 Auto Scaling] features including predictive scaling — owned end-to-end from design to operation.
  - Owned reliability and performance of ELB integration.
    - Eliminated over 99% of failures from ELB throttling and cut p90 EC2 instance termination latency by 48%.
    - Resolved double-digit customer cases including high-severity ones.
  - Optimized fleet-wide performance and efficiency via JDK upgrade, GC tuning, and tiered compilation.
  - Hardened test infrastructure and deployment safety.
    - Fixed race conditions and flakiness across thousands of integration tests.
- Software Engineer, Samsung Electronics, System LSI, 2011 - 2017 (promoted in 2013)
  - Enabled bringup of the company’s first ARM64 SoC without silicon
    - Upstreamed 4-level memory management to Linux Kernel.
  - Performed bring-up and post-silicon validation for 5+ SoCs.
    - Implemented software stack and test infrastructure for bring-up.
    - Triaged system crashes via ramdump analysis using T32 debugger.
  - Optimized Linux Kernel for performance and power efficiency.

= Open Source

- #link("https://github.com/aws/aws-cdk/commits?author=jungseoklee")[AWS CDK], 2018 - 2022
  - Contributed to EC2 Auto Scaling and DynamoDB.
- #link("https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=Jungseok+Lee")[Linux Kernel], 2013 - 2015
  - Contributed to ARM64 memory management, virtualization, and IRQ stack.

= Education

- B.S. with High Honor, Electrical and Electronic Engineering, #link("https://www.yonsei.ac.kr/en_sc/index.do")[Yonsei University], 2004 - 2010
]

#resume-body