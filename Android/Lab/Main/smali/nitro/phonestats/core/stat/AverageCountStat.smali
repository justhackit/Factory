.class public Lnitro/phonestats/core/stat/AverageCountStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "AverageCountStat.java"

# interfaces
.implements Lnitro/phonestats/core/stat/base/IsDynamic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnitro/phonestats/core/stat/Stat",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lnitro/phonestats/core/stat/base/IsDynamic;"
    }
.end annotation


# instance fields
.field divider:D


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctx"
    .parameter "unitRessource"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    .line 15
    iput p2, p0, Lnitro/phonestats/core/stat/AverageCountStat;->mUnitResource:I

    .line 16
    return-void
.end method


# virtual methods
.method public addEntry(J)V
    .locals 4
    .parameter "value"

    .prologue
    .line 20
    iget-wide v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    .line 21
    iget-object v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->mValue:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public buffer()V
    .locals 5

    .prologue
    .line 58
    iget-object v1, p0, Lnitro/phonestats/core/stat/AverageCountStat;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 59
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/AverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lnitro/phonestats/core/stat/AverageCountStat;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lnitro/phonestats/core/helper/PersistentBuffer;->setLongValue(Ljava/lang/String;J)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/AverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_divider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/PersistentBuffer;->setFloatValue(Ljava/lang/String;F)V

    .line 62
    return-void
.end method

.method public getAverage()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

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
    iget-object v1, p0, Lnitro/phonestats/core/stat/AverageCountStat;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 68
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/AverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/core/stat/AverageCountStat;->mValue:Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/AverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_divider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/PersistentBuffer;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    .line 71
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    .line 38
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/AverageCountStat;->setValue(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public setDivider(D)V
    .locals 0
    .parameter "divider"

    .prologue
    .line 31
    iput-wide p1, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    .line 32
    return-void
.end method

.method public setNrEntries(J)V
    .locals 2
    .parameter "entries"

    .prologue
    .line 26
    long-to-double v0, p1

    iput-wide v0, p0, Lnitro/phonestats/core/stat/AverageCountStat;->divider:D

    .line 27
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/AverageCountStat;->getAverage()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnitro/phonestats/core/stat/AverageCountStat;->mUnitResource:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
