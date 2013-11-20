.class abstract Lnitro/phonestats/core/stat/TrafficStat$AsyncResult;
.super Ljava/lang/Object;
.source "TrafficStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/stat/TrafficStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncResult"
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/core/stat/TrafficStat;


# direct methods
.method constructor <init>(Lnitro/phonestats/core/stat/TrafficStat;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lnitro/phonestats/core/stat/TrafficStat$AsyncResult;->this$0:Lnitro/phonestats/core/stat/TrafficStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract result(Ljava/lang/Long;)V
.end method
