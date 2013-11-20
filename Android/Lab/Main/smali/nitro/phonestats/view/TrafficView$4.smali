.class Lnitro/phonestats/view/TrafficView$4;
.super Ljava/lang/Object;
.source "TrafficView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/TrafficView;->startTrafficRefresher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/TrafficView;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/TrafficView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/TrafficView$4;->this$0:Lnitro/phonestats/view/TrafficView;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/TrafficView$4;)Lnitro/phonestats/view/TrafficView;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$4;->this$0:Lnitro/phonestats/view/TrafficView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lnitro/phonestats/view/TrafficView$4;->update()V

    .line 194
    :cond_0
    :goto_0
    iget-object v1, p0, Lnitro/phonestats/view/TrafficView$4;->this$0:Lnitro/phonestats/view/TrafficView;

    iget-boolean v1, v1, Lnitro/phonestats/view/TrafficView;->trafficUpdating:Z

    if-nez v1, :cond_1

    .line 205
    return-void

    .line 196
    :cond_1
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 197
    invoke-static {}, Lnitro/phonestats/Main;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnitro/phonestats/view/TrafficView$4;->this$0:Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v1}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->isInProcessing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lnitro/phonestats/view/TrafficView$4;->update()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method update()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$4;->this$0:Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/traffic/TrafficEngine;->updateStats(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$4;->this$0:Lnitro/phonestats/view/TrafficView;

    new-instance v1, Lnitro/phonestats/view/TrafficView$4$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/view/TrafficView$4$1;-><init>(Lnitro/phonestats/view/TrafficView$4;)V

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/TrafficView;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method
