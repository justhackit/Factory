.class public Lnitro/phonestats/core/stat/CallCostStat;
.super Lnitro/phonestats/core/stat/CostStat;
.source "CallCostStat.java"

# interfaces
.implements Lnitro/phonestats/core/stat/base/IsDynamic;


# instance fields
.field private costBaseCalls:Lnitro/phonestats/core/stat/BilledCallCountStat;

.field private costBaseMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallMinuteLimitStat;Lnitro/phonestats/core/stat/BilledCallCountStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "costBaseMinutes"
    .parameter "costBaseCalls"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/CostStat;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    .line 17
    iput-object p3, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseCalls:Lnitro/phonestats/core/stat/BilledCallCountStat;

    .line 18
    return-void
.end method


# virtual methods
.method public getCosts()D
    .locals 6

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    .line 25
    .local v0, result:D
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallCostStat;->useCostFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->useLimit()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 28
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallCostStat;->getCostsPerUnit()D

    move-result-wide v2

    iget-object v4, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v4}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 34
    :cond_0
    :goto_0
    iget-object v2, p0, Lnitro/phonestats/core/stat/CallCostStat;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->useConnectionFee(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    iget-object v2, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseCalls:Lnitro/phonestats/core/stat/BilledCallCountStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/BilledCallCountStat;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lnitro/phonestats/core/stat/CallCostStat;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/settings/core/Settings;->getConnectionFees(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    .line 37
    :cond_1
    return-wide v0

    .line 29
    :cond_2
    iget-object v2, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->useLimit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallCostStat;->getCostsPerUnit()D

    move-result-wide v2

    iget-object v4, p0, Lnitro/phonestats/core/stat/CallCostStat;->costBaseMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v4}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getUsedValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v0, v2, v4

    goto :goto_0
.end method

.method public getCostsPerUnit()D
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallCostStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getMinutePrice(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public useCostFeature()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallCostStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCallCostsFeature(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
