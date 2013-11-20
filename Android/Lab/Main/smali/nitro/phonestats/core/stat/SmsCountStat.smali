.class public Lnitro/phonestats/core/stat/SmsCountStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "SmsCountStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnitro/phonestats/core/stat/Stat",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 12
    const v0, 0x7f07010f

    iput v0, p0, Lnitro/phonestats/core/stat/SmsCountStat;->mUnitResource:I

    .line 13
    return-void
.end method


# virtual methods
.method public addValue(J)V
    .locals 2
    .parameter "addCount"

    .prologue
    .line 17
    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsCountStat;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/stat/SmsCountStat;->mValue:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public buffer()V
    .locals 5

    .prologue
    .line 31
    iget-object v1, p0, Lnitro/phonestats/core/stat/SmsCountStat;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 32
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lnitro/phonestats/core/stat/SmsCountStat;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lnitro/phonestats/core/helper/PersistentBuffer;->setLongValue(Ljava/lang/String;J)V

    .line 34
    return-void
.end method

.method public loadBuffered()V
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lnitro/phonestats/core/stat/SmsCountStat;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 40
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/core/stat/SmsCountStat;->mValue:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/stat/SmsCountStat;->mValue:Ljava/lang/Object;

    .line 26
    return-void
.end method
