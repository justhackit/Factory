.class Lnitro/phonestats/view/CostsLimitBox;
.super Lnitro/phonestats/view/LimitBox;
.source "LimitBox.java"


# instance fields
.field private costStat:Lnitro/phonestats/core/stat/CostLimitStat;

.field private costlimit:Ljava/lang/Double;

.field private estimatedCosts:Lnitro/phonestats/core/stat/CostEstimationStat;

.field private remainingCosts:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 2
    .parameter "box"
    .parameter "warningBar"
    .parameter "label"
    .parameter "context"

    .prologue
    .line 390
    invoke-direct {p0, p1, p2, p3, p4}, Lnitro/phonestats/view/LimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 393
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    const-string v1, "free_costs"

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/CostLimitStat;

    iput-object v0, p0, Lnitro/phonestats/view/CostsLimitBox;->costStat:Lnitro/phonestats/core/stat/CostLimitStat;

    .line 394
    iget-object v0, p0, Lnitro/phonestats/view/CostsLimitBox;->costStat:Lnitro/phonestats/core/stat/CostLimitStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CostLimitStat;->getRemainingDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/CostsLimitBox;->remainingCosts:Ljava/lang/Double;

    .line 395
    iget-object v0, p0, Lnitro/phonestats/view/CostsLimitBox;->costStat:Lnitro/phonestats/core/stat/CostLimitStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CostLimitStat;->getMaxDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/CostsLimitBox;->costlimit:Ljava/lang/Double;

    .line 398
    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->useExtrapolateFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    const-string v1, "estimated_total_costs"

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/CostEstimationStat;

    iput-object v0, p0, Lnitro/phonestats/view/CostsLimitBox;->estimatedCosts:Lnitro/phonestats/core/stat/CostEstimationStat;

    .line 406
    :cond_0
    return-void
.end method


# virtual methods
.method public drawBar()V
    .locals 8

    .prologue
    .line 412
    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 413
    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->costlimit:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sget v6, Lnitro/phonestats/view/CostsLimitBox;->currencydigits:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v0, v4

    .line 414
    .local v0, relativeCostsLimit:J
    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->remainingCosts:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sget v6, Lnitro/phonestats/view/CostsLimitBox;->currencydigits:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v2, v4

    .line 415
    .local v2, relativeRemainingCosts:J
    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v5, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    invoke-static {v5}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnitro/phonestats/view/WarningProgressBar2;->setWarningThreshold(D)V

    .line 416
    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setMax(I)V

    .line 417
    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    .line 419
    return-void
.end method

.method public drawText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    .line 425
    iget-object v1, p0, Lnitro/phonestats/view/CostsLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f070034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CostsLimitBox;->costStat:Lnitro/phonestats/core/stat/CostLimitStat;

    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v7}, Lnitro/phonestats/core/stat/CostLimitStat;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 428
    .local v0, state:Lnitro/phonestats/view/LimitBox$EstimationState;
    iget-object v1, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useExtrapolateFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnitro/phonestats/view/CostsLimitBox;->estimatedCosts:Lnitro/phonestats/core/stat/CostEstimationStat;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/CostEstimationStat;->shouldDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCostLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/view/CostsLimitBox;->costlimit:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnitro/phonestats/view/CostsLimitBox;->estimatedCosts:Lnitro/phonestats/core/stat/CostEstimationStat;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/CostEstimationStat;->getEstimatedCosts()D

    move-result-wide v1

    iget-object v3, p0, Lnitro/phonestats/view/CostsLimitBox;->costlimit:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v1, v3

    cmpl-double v1, v1, v5

    if-lez v1, :cond_2

    .line 433
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    iget-object v1, p0, Lnitro/phonestats/view/CostsLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f070035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CostsLimitBox;->estimatedCosts:Lnitro/phonestats/core/stat/CostEstimationStat;

    iget-object v4, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v7}, Lnitro/phonestats/core/stat/CostEstimationStat;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 443
    :cond_1
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/CostsLimitBox;->drawEstimationIcon(Lnitro/phonestats/view/LimitBox$EstimationState;)V

    .line 444
    return-void

    .line 435
    :cond_2
    :try_start_1
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;
    :try_end_1
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public wouldDraw()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lnitro/phonestats/view/CostsLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCostLimit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
