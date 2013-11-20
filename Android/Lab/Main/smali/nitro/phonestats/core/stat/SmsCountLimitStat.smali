.class public Lnitro/phonestats/core/stat/SmsCountLimitStat;
.super Lnitro/phonestats/core/stat/LimitStat;
.source "SmsCountLimitStat.java"


# instance fields
.field private inMsg:Lnitro/phonestats/core/stat/SmsCountStat;

.field private minuteTransferBase:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

.field private outMsg:Lnitro/phonestats/core/stat/SmsCountStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/CallMinuteLimitStat;)V
    .locals 1
    .parameter "ctx"
    .parameter "outMsg"
    .parameter "inMsg"
    .parameter "minuteTransferBase"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/LimitStat;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->outMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    .line 18
    iput-object p3, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->inMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    .line 19
    iput-object p4, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->minuteTransferBase:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    .line 20
    invoke-virtual {p4, p0}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->setSmsTransferBase(Lnitro/phonestats/core/stat/SmsCountLimitStat;)V

    .line 21
    const v0, 0x7f07010f

    iput v0, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->mUnitResource:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCallWeight()J
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useMinuteExchange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->getMinuteExchangeRatio(Landroid/content/Context;)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->minuteTransferBase:Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getUsedPlainValue()J

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

.method public getMax()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getSMSLimit(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRemaining()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getUsedValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getUsedPlainValue()J
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->outMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/SmsCountStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->inMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/SmsCountStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

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
    .line 53
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getUsedPlainValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getCallWeight()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 40
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->useLimit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    .line 42
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lnitro/phonestats/core/stat/LimitStat;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public useLimit()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsCountLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
