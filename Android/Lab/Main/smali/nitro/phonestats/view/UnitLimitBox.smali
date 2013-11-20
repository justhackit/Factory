.class Lnitro/phonestats/view/UnitLimitBox;
.super Lnitro/phonestats/view/LimitBox;
.source "LimitBox.java"


# instance fields
.field private estimatedUnites:I

.field private remainingUnits:I

.field private unitCosts:Ljava/lang/String;

.field private unitStat:Lnitro/phonestats/core/stat/UnitLimitStat;

.field private unitlimit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 6
    .parameter "box"
    .parameter "warningBar"
    .parameter "label"
    .parameter "context"

    .prologue
    .line 470
    invoke-direct {p0, p1, p2, p3, p4}, Lnitro/phonestats/view/LimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 472
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "free_units"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/UnitLimitStat;

    iput-object v2, p0, Lnitro/phonestats/view/UnitLimitBox;->unitStat:Lnitro/phonestats/core/stat/UnitLimitStat;

    .line 475
    iget-object v2, p0, Lnitro/phonestats/view/UnitLimitBox;->unitStat:Lnitro/phonestats/core/stat/UnitLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/UnitLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lnitro/phonestats/view/UnitLimitBox;->remainingUnits:I

    .line 476
    iget-object v2, p0, Lnitro/phonestats/view/UnitLimitBox;->unitStat:Lnitro/phonestats/core/stat/UnitLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/UnitLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/UnitLimitBox;->unitlimit:Ljava/lang/Integer;

    .line 484
    :try_start_0
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "estimated_units"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/UnitsEstimationStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/UnitsEstimationStat;->getEstimated()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lnitro/phonestats/view/UnitLimitBox;->estimatedUnites:I
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->useUnitCosts(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "costs_units"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/UnitCostsStats;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/UnitCostsStats;->getCosts()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 496
    .local v0, costsVal:Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lnitro/phonestats/view/UnitLimitBox;->currencydigits:I

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

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/UnitLimitBox;->unitCosts:Ljava/lang/String;

    .line 500
    .end local v0           #costsVal:Ljava/lang/Float;
    :cond_0
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const/4 v2, -0x1

    iput v2, p0, Lnitro/phonestats/view/UnitLimitBox;->estimatedUnites:I

    goto :goto_0
.end method


# virtual methods
.method public drawBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 508
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/view/WarningProgressBar2;->setWarningThreshold(D)V

    .line 509
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->unitlimit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setMax(I)V

    .line 510
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget v1, p0, Lnitro/phonestats/view/UnitLimitBox;->remainingUnits:I

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 515
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    goto :goto_0
.end method

.method public drawText()V
    .locals 5

    .prologue
    .line 521
    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->unitCosts:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->unitCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/UnitLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  (+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnitro/phonestats/view/UnitLimitBox;->remainingUnits:I

    rsub-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f070111

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :goto_0
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 532
    .local v0, state:Lnitro/phonestats/view/LimitBox$EstimationState;
    iget v1, p0, Lnitro/phonestats/view/UnitLimitBox;->estimatedUnites:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 533
    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->unitlimit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lnitro/phonestats/view/UnitLimitBox;->estimatedUnites:I

    iget-object v2, p0, Lnitro/phonestats/view/UnitLimitBox;->unitlimit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    .line 535
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 539
    :cond_0
    :goto_1
    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f070037

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnitro/phonestats/view/UnitLimitBox;->estimatedUnites:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 541
    :cond_1
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/UnitLimitBox;->drawEstimationIcon(Lnitro/phonestats/view/LimitBox$EstimationState;)V

    .line 542
    return-void

    .line 525
    .end local v0           #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/view/UnitLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->unitStat:Lnitro/phonestats/core/stat/UnitLimitStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/UnitLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f07010d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f070027

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->unitStat:Lnitro/phonestats/core/stat/UnitLimitStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/UnitLimitStat;->getRemainingSMS()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 528
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f07010f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 537
    .restart local v0       #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_3
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;

    goto/16 :goto_1
.end method

.method public wouldDraw()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lnitro/phonestats/view/UnitLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
