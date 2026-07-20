#include "../analytics.typ"

#set document(title: [Projects])
#show link: it => {
  html.elem("a", attrs: (href: str(it.dest), target: "_blank", rel: "noopener"))[#it.body]
}

#title()

In addition to internal performance, reliability, and silicon validation efforts, launched:

#table(
  columns: (auto,  auto, 1fr, auto),
  [*Year*], [*Company*], [*Feature*], [*Link*],
  [2025], [Amazon], [Root Volume Replacement via Instance Refresh], [#link("https://aws.amazon.com/about-aws/whats-new/2025/11/amazon-ec2-auto-scaling-root-volume-replacement/")[What's New]],
  [2025], [Amazon], [Lambda Lifecycle Hook for Auto Scaling], [#link("https://aws.amazon.com/about-aws/whats-new/2025/07/amazon-ec2-auto-scaling-aws-lambda-functions/")[What's New]],
  [2024], [Amazon], [ARC Zonal Shift & Zonal Autoshift], [#link("https://aws.amazon.com/about-aws/whats-new/2024/11/ec2-auto-scaling-application-recovery-controller-zonal-shift/")[What's New]],
  [2024], [Amazon], [Predictive Scaling for Amazon ECS], [#link("https://aws.amazon.com/about-aws/whats-new/2024/11/predictive-scaling-for-amazon-ecs-services/")[What's New]],
  [2023], [Amazon], [Predictive Scaling — Forecasts with Infrequent Data], [#link("https://aws.amazon.com/about-aws/whats-new/2023/01/amazon-ec2-auto-scaling-forecasts-frequently-predictive-scaling/")[What's New]],
  [2022], [Amazon], [Target Tracking — Metric Math Support], [#link("https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-ec2-auto-scaling-supports-metric-math-target-tracking-policies/")[What's New]],
  [2022], [Amazon], [Predictive Scaling — Forecast on CloudWatch Metrics], [#link("https://aws.amazon.com/about-aws/whats-new/2022/07/amazon-ec2-predictive-scaling-forecast-cloudwatch-metrics/")[What's New]],
  [2022], [Amazon], [Predictive Scaling — Backfill & Accuracy Validation], [#link("https://aws.amazon.com/about-aws/whats-new/2022/05/amazon-ec2-auto-scaling-backfill-predictive-scaling-forecasts-accuracy-validate/")[What's New]],
  [2021], [Amazon], [Predictive Scaling — Custom Metrics], [#link("https://aws.amazon.com/about-aws/whats-new/2021/11/amazon-ec2-auto-scaling-predictive-scaling-custom-metrics/")[What's New]],
  [2021], [Amazon], [Predictive Scaling — Native Scaling Policy], [#link("https://aws.amazon.com/about-aws/whats-new/2021/05/amazon-ec2-auto-scaling-introduces-predictive-scaling-native-scaling-policy/")[What's New]],
  [2015], [Samsung], [ARM64 — IRQ Stack], [#link("https://lwn.net/Articles/656702/")[LWN]],
  [2014], [Samsung], [ARM64 — 4 Levels of Translation Tables], [#link("https://groups.google.com/g/linux.kernel/c/AAuqQbTEg9g/m/b72zZj3lfu8J")[LKML]],
)

#html.elem("style", text(
  "table { border-collapse: separate; border-spacing: 12px 2px; margin-bottom: 24px; } table td, table th { padding: 2px 12px; }"
))

#html.elem("hr")[]
#link("/", "Home")
