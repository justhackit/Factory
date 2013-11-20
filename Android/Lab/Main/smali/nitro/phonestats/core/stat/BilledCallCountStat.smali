.class public Lnitro/phonestats/core/stat/BilledCallCountStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "BilledCallCountStat.java"

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
.field private ingoingCalls:Lnitro/phonestats/core/stat/CallCountStat;

.field private outgoingCalls:Lnitro/phonestats/core/stat/CallCountStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallCountStat;Lnitro/phonestats/core/stat/CallCountStat;)V
    .locals 1
    .parameter "ctx"
    .parameter "ingoingCalls"
    .parameter "outgoingCalls"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 15
    const v0, 0x7f07010c

    iput v0, p0, Lnitro/phonestats/core/stat/BilledCallCountStat;->mUnitResource:I

    .line 16
    iput-object p2, p0, Lnitro/phonestats/core/stat/BilledCallCountStat;->ingoingCalls:Lnitro/phonestats/core/stat/CallCountStat;

    .line 17
    iput-object p3, p0, Lnitro/phonestats/core/stat/BilledCallCountStat;->outgoingCalls:Lnitro/phonestats/core/stat/CallCountStat;

    .line 18
    return-void
.end method


# virtual methods
.method public buffer()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public getValue()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 23
    iget-object v0, p0, Lnitro/phonestats/core/stat/BilledCallCountStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/BilledCallCountStat;->ingoingCalls:Lnitro/phonestats/core/stat/CallCountStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallCountStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lnitro/phonestats/core/stat/BilledCallCountStat;->outgoingCalls:Lnitro/phonestats/core/stat/CallCountStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallCountStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnitro/phonestats/core/stat/BilledCallCountStat;->outgoingCalls:Lnitro/phonestats/core/stat/CallCountStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallCountStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/BilledCallCountStat;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public loadBuffered()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
