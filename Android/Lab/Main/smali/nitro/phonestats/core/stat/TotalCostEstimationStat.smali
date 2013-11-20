.class public Lnitro/phonestats/core/stat/TotalCostEstimationStat;
.super Lnitro/phonestats/core/stat/CostEstimationStat;
.source "TotalCostEstimationStat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CostStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "baseStat"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lnitro/phonestats/core/stat/CostEstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CostStat;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getEstimatedCosts()D
    .locals 5

    .prologue
    .line 18
    :try_start_0
    invoke-super {p0}, Lnitro/phonestats/core/stat/CostEstimationStat;->getEstimatedCosts()D

    move-result-wide v1

    iget-object v3, p0, Lnitro/phonestats/core/stat/TotalCostEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/settings/core/Settings;->getBasicFees(Landroid/content/Context;)F
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    .line 21
    :goto_0
    return-wide v1

    .line 19
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    iget-object v1, p0, Lnitro/phonestats/core/stat/TotalCostEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->getBasicFees(Landroid/content/Context;)F

    move-result v1

    float-to-double v1, v1

    goto :goto_0
.end method
