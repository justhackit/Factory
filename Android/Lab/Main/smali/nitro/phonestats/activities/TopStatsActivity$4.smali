.class Lnitro/phonestats/activities/TopStatsActivity$4;
.super Landroid/os/Handler;
.source "TopStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/TopStatsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/TopStatsActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/TopStatsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity$4;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$4;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mStatKey:Ljava/lang/String;
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity;->access$5(Lnitro/phonestats/activities/TopStatsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$4;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity$4;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v1}, Lnitro/phonestats/activities/TopStatsActivity;->access$6(Lnitro/phonestats/activities/TopStatsActivity;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/activities/TopStatsActivity$4;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mStatKey:Ljava/lang/String;
    invoke-static {v2}, Lnitro/phonestats/activities/TopStatsActivity;->access$5(Lnitro/phonestats/activities/TopStatsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    #setter for: Lnitro/phonestats/activities/TopStatsActivity;->mStat:Lnitro/phonestats/core/stat/Stat;
    invoke-static {v0, v1}, Lnitro/phonestats/activities/TopStatsActivity;->access$7(Lnitro/phonestats/activities/TopStatsActivity;Lnitro/phonestats/core/stat/Stat;)V

    .line 158
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$4;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #calls: Lnitro/phonestats/activities/TopStatsActivity;->refreshViews()V
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity;->access$4(Lnitro/phonestats/activities/TopStatsActivity;)V

    .line 160
    :cond_0
    return-void
.end method
