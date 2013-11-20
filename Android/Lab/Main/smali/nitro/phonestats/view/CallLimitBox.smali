.class Lnitro/phonestats/view/CallLimitBox;
.super Lnitro/phonestats/view/LimitBox;
.source "LimitBox.java"


# instance fields
.field private callCountStat:Lnitro/phonestats/core/stat/BilledCallCountStat;

.field private callStat:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

.field private calltimelimit:Ljava/lang/Integer;

.field private estimatedMin:I

.field private minuteCosts:Ljava/lang/String;

.field private remainingMinutes:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 6
    .parameter "box"
    .parameter "warningBar"
    .parameter "label"
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lnitro/phonestats/view/LimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 94
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "free_min"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    iput-object v2, p0, Lnitro/phonestats/view/CallLimitBox;->callStat:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    .line 95
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "billed_call_count"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/BilledCallCountStat;

    iput-object v2, p0, Lnitro/phonestats/view/CallLimitBox;->callCountStat:Lnitro/phonestats/core/stat/BilledCallCountStat;

    .line 97
    iget-object v2, p0, Lnitro/phonestats/view/CallLimitBox;->callStat:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lnitro/phonestats/view/CallLimitBox;->remainingMinutes:I

    .line 98
    iget-object v2, p0, Lnitro/phonestats/view/CallLimitBox;->callStat:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/CallLimitBox;->calltimelimit:Ljava/lang/Integer;

    .line 106
    :try_start_0
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "estimated_min"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/MinuteEstimationStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getEstimatedMinutes()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lnitro/phonestats/view/CallLimitBox;->estimatedMin:I
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->useCallCostsFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->useConnectionFee(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "costs_call"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/CallCostStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/CallCostStat;->getCosts()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 119
    .local v1, minuteCostsVal:Ljava/lang/Float;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lnitro/phonestats/view/CallLimitBox;->currencydigits:I

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

    iput-object v2, p0, Lnitro/phonestats/view/CallLimitBox;->minuteCosts:Ljava/lang/String;

    .line 123
    .end local v1           #minuteCostsVal:Ljava/lang/Float;
    :cond_1
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const/4 v2, -0x1

    iput v2, p0, Lnitro/phonestats/view/CallLimitBox;->estimatedMin:I

    goto :goto_0
.end method


# virtual methods
.method public drawBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 131
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/view/WarningProgressBar2;->setWarningThreshold(D)V

    .line 132
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->calltimelimit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setMax(I)V

    .line 133
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget v1, p0, Lnitro/phonestats/view/CallLimitBox;->remainingMinutes:I

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 138
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    goto :goto_0
.end method

.method public drawText()V
    .locals 6

    .prologue
    const v4, 0x7f0700c6

    const v5, 0x7f07010d

    .line 144
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->minuteCosts:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->minuteCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/CallLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  (+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnitro/phonestats/view/CallLimitBox;->remainingMinutes:I

    rsub-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 162
    .local v0, state:Lnitro/phonestats/view/LimitBox$EstimationState;
    iget v1, p0, Lnitro/phonestats/view/CallLimitBox;->estimatedMin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 163
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->calltimelimit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lnitro/phonestats/view/CallLimitBox;->estimatedMin:I

    iget-object v2, p0, Lnitro/phonestats/view/CallLimitBox;->calltimelimit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_5

    .line 165
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 169
    :cond_0
    :goto_1
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnitro/phonestats/view/CallLimitBox;->estimatedMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/CallLimitBox;->drawEstimationIcon(Lnitro/phonestats/view/LimitBox$EstimationState;)V

    .line 172
    return-void

    .line 148
    .end local v0           #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->minuteCosts:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useConnectionFee(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 150
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->minuteCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/CallLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->callStat:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getUsedValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 153
    :cond_3
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->minuteCosts:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useConnectionFee(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->minuteCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/CallLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->callStat:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getUsedValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->callCountStat:Lnitro/phonestats/core/stat/BilledCallCountStat;

    iget-object v4, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lnitro/phonestats/core/stat/BilledCallCountStat;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    :cond_4
    iget-object v1, p0, Lnitro/phonestats/view/CallLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnitro/phonestats/view/CallLimitBox;->remainingMinutes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 167
    .restart local v0       #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_5
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;

    goto/16 :goto_1
.end method

.method public wouldDraw()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/view/CallLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCallCostsFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
