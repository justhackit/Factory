.class public Lnitro/phonestats/core/PhoneEvent$CallEvent;
.super Lnitro/phonestats/core/PhoneEvent;
.source "PhoneEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;
    }
.end annotation


# instance fields
.field public action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

.field public duration:I

.field private timingMode:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;


# direct methods
.method public constructor <init>(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;)V
    .locals 1
    .parameter "timingMode"

    .prologue
    .line 18
    invoke-direct {p0}, Lnitro/phonestats/core/PhoneEvent;-><init>()V

    .line 19
    iput-object p1, p0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->timingMode:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->isBilled:Z

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getBilledDuration()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->isBilled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->timingMode:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    iget v1, p0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->duration:I

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/StatsUtils;->calcTiming(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
