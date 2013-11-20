.class Lnitro/phonestats/Main$3;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/Main;->initiateFirstSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/Main;


# direct methods
.method constructor <init>(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/Main$3;->this$0:Lnitro/phonestats/Main;

    .line 452
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnitro/phonestats/Main$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 462
    .local v2, start:J
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lnitro/phonestats/Main$3;->this$0:Lnitro/phonestats/Main;

    .line 463
    const-class v5, Lnitro/phonestats/Main$FirstSyncService;

    .line 462
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v1, firstSyncIntent:Landroid/content/Intent;
    iget-object v4, p0, Lnitro/phonestats/Main$3;->this$0:Lnitro/phonestats/Main;

    invoke-virtual {v4, v1}, Lnitro/phonestats/Main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 465
    :goto_0
    sget-boolean v4, Lnitro/phonestats/Main$FirstSyncService;->syncedAlready:Z

    if-eqz v4, :cond_0

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Time taken for FIRSTSYNC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 479
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 483
    const/4 v4, 0x0

    return-object v4

    .line 469
    :cond_0
    const-wide/16 v4, 0x12c

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnitro/phonestats/Main$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 496
    iget-object v0, p0, Lnitro/phonestats/Main$3;->this$0:Lnitro/phonestats/Main;

    const/4 v1, 0x1

    #calls: Lnitro/phonestats/Main;->refreshData(Z)V
    invoke-static {v0, v1}, Lnitro/phonestats/Main;->access$5(Lnitro/phonestats/Main;Z)V

    .line 497
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnitro/phonestats/Main$3;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 490
    iget-object v0, p0, Lnitro/phonestats/Main$3;->this$0:Lnitro/phonestats/Main;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/Main;->setProgressOverlayText(Ljava/lang/String;)V

    .line 491
    return-void
.end method
