.class Lnitro/phonestats/activities/LogActivity$5;
.super Lnitro/phonestats/view/ProgressTask;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/LogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/LogActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/LogActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/LogActivity$5;->this$0:Lnitro/phonestats/activities/LogActivity;

    .line 261
    invoke-direct {p0, p2}, Lnitro/phonestats/view/ProgressTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$5;->this$0:Lnitro/phonestats/activities/LogActivity;

    iget-object v0, v0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getBackupManager()Lnitro/phonestats/backup/DroidStatsBackupManager;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/backup/DroidStatsBackupManager;->exportCSV()V

    .line 265
    return-void
.end method
