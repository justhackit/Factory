.class public abstract Lnitro/phonestats/core/stat/LimitStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "LimitStat.java"


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
    .locals 0
    .parameter "ctx"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public buffer()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public abstract getMax()Ljava/lang/Long;
.end method

.method public abstract getRemaining()Ljava/lang/Long;
.end method

.method public abstract getUsedPlainValue()J
.end method

.method public abstract getUsedValue()J
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/LimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/LimitStat;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public loadBuffered()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/stat/LimitStat;->mValue:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public abstract useLimit()Z
.end method
