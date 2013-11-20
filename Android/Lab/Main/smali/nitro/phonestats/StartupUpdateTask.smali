.class public final Lnitro/phonestats/StartupUpdateTask;
.super Landroid/os/AsyncTask;
.source "StartupUpdateTask.java"


# annotations
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
.field private abort:Z

.field private context:Landroid/content/Context;

.field private final firstSyncNeeded:Z

.field private model:Lnitro/phonestats/core/IStatManager;

.field private final startupUpdateTaskView:Lnitro/phonestats/view/StartUpdateTaskView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/view/StartUpdateTaskView;Z)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "firstSyncNeeded"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p2, p0, Lnitro/phonestats/StartupUpdateTask;->startupUpdateTaskView:Lnitro/phonestats/view/StartUpdateTaskView;

    .line 24
    iput-boolean p3, p0, Lnitro/phonestats/StartupUpdateTask;->firstSyncNeeded:Z

    .line 25
    iput-object p1, p0, Lnitro/phonestats/StartupUpdateTask;->context:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->model:Lnitro/phonestats/core/IStatManager;

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnitro/phonestats/StartupUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 35
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getCorrectionState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lnitro/phonestats/StartupUpdateTask;->context:Landroid/content/Context;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lnitro/phonestats/StartupUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->checkNumberCorrection()V

    .line 44
    iget-boolean v0, p0, Lnitro/phonestats/StartupUpdateTask;->firstSyncNeeded:Z

    if-nez v0, :cond_1

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lnitro/phonestats/StartupUpdateTask;->context:Landroid/content/Context;

    const v2, 0x7f070108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lnitro/phonestats/StartupUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->syncBackend()I

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lnitro/phonestats/StartupUpdateTask;->context:Landroid/content/Context;

    const v2, 0x7f070107

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lnitro/phonestats/StartupUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->loadEvents()V

    .line 55
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->startupUpdateTaskView:Lnitro/phonestats/view/StartUpdateTaskView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lnitro/phonestats/view/StartUpdateTaskView;->setLastUpdated(J)V

    .line 56
    sput-boolean v3, Lnitro/phonestats/Main;->fullSyncEnded:Z

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnitro/phonestats/StartupUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->startupUpdateTaskView:Lnitro/phonestats/view/StartUpdateTaskView;

    invoke-interface {v0}, Lnitro/phonestats/view/StartUpdateTaskView;->dismissProgressOverlay()V

    .line 101
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->startupUpdateTaskView:Lnitro/phonestats/view/StartUpdateTaskView;

    invoke-interface {v0, v1}, Lnitro/phonestats/view/StartUpdateTaskView;->setKeepScreenOn(Z)V

    .line 104
    iget-boolean v0, p0, Lnitro/phonestats/StartupUpdateTask;->abort:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->setInProcessing(Z)V

    .line 106
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->context:Landroid/content/Context;

    sget-object v1, Lnitro/phonestats/Main;->errorHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    .line 107
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->isInProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->setInProcessing(Z)V

    .line 114
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->startupUpdateTaskView:Lnitro/phonestats/view/StartUpdateTaskView;

    invoke-interface {v0, v1}, Lnitro/phonestats/view/StartUpdateTaskView;->setKeepScreenOn(Z)V

    .line 115
    return-void

    .line 113
    :cond_0
    iput-boolean v1, p0, Lnitro/phonestats/StartupUpdateTask;->abort:Z

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnitro/phonestats/StartupUpdateTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 93
    iget-object v0, p0, Lnitro/phonestats/StartupUpdateTask;->startupUpdateTaskView:Lnitro/phonestats/view/StartUpdateTaskView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lnitro/phonestats/view/StartUpdateTaskView;->setProgressOverlayText(Ljava/lang/String;)V

    .line 94
    return-void
.end method
