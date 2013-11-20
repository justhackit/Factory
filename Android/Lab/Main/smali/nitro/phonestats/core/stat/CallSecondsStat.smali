.class public Lnitro/phonestats/core/stat/CallSecondsStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "CallSecondsStat.java"


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
    .line 13
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 14
    const v0, 0x7f07010d

    iput v0, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->mUnitResource:I

    .line 15
    return-void
.end method

.method private useHoursDisplay()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useHoursDisplay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addValue(I)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 41
    iget-object v0, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->mValue:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public buffer()V
    .locals 5

    .prologue
    .line 59
    iget-object v1, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 60
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lnitro/phonestats/core/helper/PersistentBuffer;->setLongValue(Ljava/lang/String;J)V

    .line 62
    return-void
.end method

.method public getMinuteValue()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public loadBuffered()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 68
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->mValue:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/stat/CallSecondsStat;->mValue:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 19
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 20
    .local v0, val:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 22
    new-instance v1, Lnitro/phonestats/core/helper/formatter/CallLengthValue;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;-><init>(JLandroid/content/Context;)V

    .line 23
    .local v1, val2:Lnitro/phonestats/core/helper/formatter/CallLengthValue;
    invoke-direct {p0}, Lnitro/phonestats/core/stat/CallSecondsStat;->useHoursDisplay()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->getTextRepresentation(ZZZ)Ljava/lang/String;

    move-result-object v2

    .line 27
    .end local v1           #val2:Lnitro/phonestats/core/helper/formatter/CallLengthValue;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "NULL"

    goto :goto_0
.end method
