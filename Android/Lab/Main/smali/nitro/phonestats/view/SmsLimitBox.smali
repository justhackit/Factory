.class Lnitro/phonestats/view/SmsLimitBox;
.super Lnitro/phonestats/view/LimitBox;
.source "LimitBox.java"


# instance fields
.field private estimatedSMS:I

.field private messageCosts:Ljava/lang/String;

.field private remainingSMS:Ljava/lang/Long;

.field private smsStat:Lnitro/phonestats/core/stat/SmsCountLimitStat;

.field private smslimit:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 6
    .parameter "box"
    .parameter "warningBar"
    .parameter "label"
    .parameter "context"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lnitro/phonestats/view/LimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 197
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "free_sms"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/SmsCountLimitStat;

    iput-object v2, p0, Lnitro/phonestats/view/SmsLimitBox;->smsStat:Lnitro/phonestats/core/stat/SmsCountLimitStat;

    .line 200
    iget-object v2, p0, Lnitro/phonestats/view/SmsLimitBox;->smsStat:Lnitro/phonestats/core/stat/SmsCountLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/SmsLimitBox;->remainingSMS:Ljava/lang/Long;

    .line 201
    iget-object v2, p0, Lnitro/phonestats/view/SmsLimitBox;->smsStat:Lnitro/phonestats/core/stat/SmsCountLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/SmsLimitBox;->smslimit:Ljava/lang/Long;

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lnitro/phonestats/view/SmsLimitBox;->messageCosts:Ljava/lang/String;

    .line 212
    :try_start_0
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "estimated_sms"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/SmsEstimationStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/SmsEstimationStat;->getEstimated()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lnitro/phonestats/view/SmsLimitBox;->estimatedSMS:I
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->useSMSCostsFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {p4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    const-string v3, "costs_sms"

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/SmsCostStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/SmsCostStat;->getCosts()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 222
    .local v1, smsCostsVal:Ljava/lang/Float;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lnitro/phonestats/view/SmsLimitBox;->currencydigits:I

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

    iput-object v2, p0, Lnitro/phonestats/view/SmsLimitBox;->messageCosts:Ljava/lang/String;

    .line 228
    .end local v1           #smsCostsVal:Ljava/lang/Float;
    :cond_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const/4 v2, -0x1

    iput v2, p0, Lnitro/phonestats/view/SmsLimitBox;->estimatedSMS:I

    goto :goto_0
.end method


# virtual methods
.method public drawBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 235
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/view/WarningProgressBar2;->setWarningThreshold(D)V

    .line 236
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->smslimit:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setMax(I)V

    .line 237
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->remainingSMS:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setUseWarningThreshold(Z)V

    .line 242
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/WarningProgressBar2;->setProgress(I)V

    goto :goto_0
.end method

.method public drawText()V
    .locals 8

    .prologue
    const v7, 0x7f07010f

    const-wide/16 v5, 0x0

    .line 249
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->messageCosts:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->messageCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/SmsLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  (+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->remainingSMS:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 260
    .local v0, state:Lnitro/phonestats/view/LimitBox$EstimationState;
    iget v1, p0, Lnitro/phonestats/view/SmsLimitBox;->estimatedSMS:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 261
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->smslimit:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    iget v1, p0, Lnitro/phonestats/view/SmsLimitBox;->estimatedSMS:I

    int-to-long v1, v1

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->smslimit:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    .line 263
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;

    .line 267
    :cond_0
    :goto_1
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnitro/phonestats/view/SmsLimitBox;->estimatedSMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/SmsLimitBox;->drawEstimationIcon(Lnitro/phonestats/view/LimitBox$EstimationState;)V

    .line 270
    return-void

    .line 251
    .end local v0           #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->messageCosts:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 253
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->messageCosts:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnitro/phonestats/view/SmsLimitBox;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->smsStat:Lnitro/phonestats/core/stat/SmsCountLimitStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getUsedValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    .line 256
    :cond_3
    iget-object v1, p0, Lnitro/phonestats/view/SmsLimitBox;->label:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    const v4, 0x7f0700dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/SmsLimitBox;->remainingSMS:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 265
    .restart local v0       #state:Lnitro/phonestats/view/LimitBox$EstimationState;
    :cond_4
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;

    goto/16 :goto_1
.end method

.method public wouldDraw()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/view/SmsLimitBox;->context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useSMSCostsFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
