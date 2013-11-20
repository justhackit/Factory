.class public Lnitro/phonestats/core/stat/CallMinuteLimitStat;
.super Lnitro/phonestats/core/stat/LimitStat;
.source "CallMinuteLimitStat.java"

# interfaces
.implements Lnitro/phonestats/core/stat/base/IsDynamic;


# instance fields
.field private inMin:Lnitro/phonestats/core/stat/CallSecondsStat;

.field private outMin:Lnitro/phonestats/core/stat/CallSecondsStat;

.field private smsTransferBase:Lnitro/phonestats/core/stat/SmsCountLimitStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/CallSecondsStat;)V
    .locals 1
    .parameter "ctx"
    .parameter "outMin"
    .parameter "inMin"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/LimitStat;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->outMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 20
    iput-object p3, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->inMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 21
    const v0, 0x7f07010d

    iput v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->mUnitResource:I

    .line 22
    return-void
.end method


# virtual methods
.method public getMax()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->useLimit()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getCalltimeLimit(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemaining()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getUsedValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSmsWeight()J
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useMinuteExchange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getMinuteExchangeRatio(Landroid/content/Context;)D

    move-result-wide v0

    iget-object v2, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->smsTransferBase:Lnitro/phonestats/core/stat/SmsCountLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getUsedPlainValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUsedPlainValue()J
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->outMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getMinuteValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->inMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getMinuteValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUsedValue()J
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getUsedPlainValue()J

    move-result-wide v0

    .line 79
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getSmsWeight()J

    move-result-wide v2

    .line 78
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setSmsTransferBase(Lnitro/phonestats/core/stat/SmsCountLimitStat;)V
    .locals 0
    .parameter "smsTransferBase"

    .prologue
    .line 87
    iput-object p1, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->smsTransferBase:Lnitro/phonestats/core/stat/SmsCountLimitStat;

    .line 89
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 54
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->useLimit()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "-"

    .line 62
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-string v0, ""

    .line 57
    .local v0, value:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->mUnitResource:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public useLimit()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
