.class Lnitro/phonestats/activities/TopStatsActivity$6$2;
.super Ljava/lang/Object;
.source "TopStatsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/TopStatsActivity$6;->onChartSeriesUnfocused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/activities/TopStatsActivity$6;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/TopStatsActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity$6$2;->this$1:Lnitro/phonestats/activities/TopStatsActivity$6;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6$2;->this$1:Lnitro/phonestats/activities/TopStatsActivity$6;

    #calls: Lnitro/phonestats/activities/TopStatsActivity$6;->dismissUserOverlay()V
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity$6;->access$1(Lnitro/phonestats/activities/TopStatsActivity$6;)V

    .line 280
    return-void
.end method
