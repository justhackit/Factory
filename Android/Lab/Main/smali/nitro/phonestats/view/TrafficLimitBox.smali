.class Lnitro/phonestats/view/TrafficLimitBox;
.super Lnitro/phonestats/view/LimitBox;
.source "LimitBox.java"


# instance fields
.field private dataCosts:Ljava/lang/String;

.field private dataStat:Lnitro/phonestats/core/stat/TrafficLimitStat;

.field private datalimit:Ljava/lang/Long;

.field private estimatedData:J

.field private remainingData:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 6
    .parameter "box"
    .parameter "warningBar"
    .parameter "label"
    .parameter "context"

    .prologue
    .line 293
    invoke-direct {p0, p1, p2, p3, p4}, Lnitro/phonestats/view/LimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 296
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "free_mobile_data"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/TrafficLimitStat;

    iput-object v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataStat:Lnitro/phonestats/core/stat/TrafficLimitStat;

    .line 297
    iget-object v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataStat:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->remainingData:Ljava/lang/Long;

    .line 298
    iget-object v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataStat:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->datalimit:Ljava/lang/Long;

    .line 304
    :try_start_0
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "estimated_mobile_data"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/TrafficEstimationStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->getEstimated()J

    move-result-wide v2

    iput-wide v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->estimatedData:J
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->useDataCostFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "costs_mobile_data"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/TrafficCostStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/TrafficCostStat;->getCosts()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 315
    .local v1, trafficCostsValue:Ljava/lang/Float;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lnitro/phonestats/view/TrafficLimitBox;->currencydigits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataCosts:Ljava/lang/String;

    .line 321
    .end local v1           #trafficCostsValue:Ljava/lang/Float;
    :cond_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lnitro/phonestats/view/TrafficLimitBox;->estimatedData:J

    goto :goto_0
.end method


# virtual methods
.method public drawBar()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    .line 326
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 329
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->datalimit:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 330
    .local v0, relativeDataLimit:J
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->remainingData:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 331
    .local v2, relativeRemainingData:J
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 335
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v5, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    invoke-static {v5}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnitro/phonestats/view/WarningProgressBar2;->setWarningThreshold(D)V

    .line 336
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setMax(I)V

    .line 337
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    .line 344
    .end local v0           #relativeDataLimit:J
    .end local v2           #relativeRemainingData:J
    :goto_1
    return-void

    .line 332
    .restart local v0       #relativeDataLimit:J
    .restart local v2       #relativeRemainingData:J
    :cond_0
    div-long/2addr v0, v6

    .line 333
    div-long/2addr v2, v6

    goto :goto_0

    .line 340
    .end local v0           #relativeDataLimit:J
    .end local v2           #relativeRemainingData:J
    :cond_1
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 341
    iget-object v4, p0, Lnitro/phonestats/view/TrafficLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v4, v5}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    goto :goto_1
.end method

.method public drawText()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 349
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataCosts:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/TrafficLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  (+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->remainingData:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v6, v3

    invoke-static {v3, v4, v5}, Lnitro/phonestats/core/traffic/TrafficEngine;->formatDataNumber2(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 357
    .local v0, state:Lnitro/phonestats/view/LimitBox$EstimationState;
    iget-wide v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->estimatedData:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->datalimit:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->estimatedData:J

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->datalimit:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, v6

    if-lez v1, :cond_4

    .line 360
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 364
    :cond_0
    :goto_1
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700bd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->estimatedData:J

    invoke-static {v3, v4}, Lnitro/phonestats/core/helper/StatsUtils;->formatDataNumber(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 366
    :cond_1
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/TrafficLimitBox;->drawEstimationIcon(Lnitro/phonestats/view/LimitBox$EstimationState;)V

    .line 367
    return-void

    .line 351
    .end local v0           #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataCosts:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/TrafficLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->dataStat:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getUsedValue()J

    move-result-wide v3

    invoke-static {v3, v4, v5}, Lnitro/phonestats/core/traffic/TrafficEngine;->formatDataNumber2(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 354
    :cond_3
    iget-object v1, p0, Lnitro/phonestats/view/TrafficLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/TrafficLimitBox;->remainingData:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v5}, Lnitro/phonestats/core/traffic/TrafficEngine;->formatDataNumber2(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 362
    .restart local v0       #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_4
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;

    goto/16 :goto_1
.end method

.method public wouldDraw()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/view/TrafficLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useDataCostFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
