.class Lnitro/phonestats/settings/Prefs$8$1;
.super Lnitro/phonestats/view/ProgressTask;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/settings/Prefs$8;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs$8;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$8$1;->this$1:Lnitro/phonestats/settings/Prefs$8;

    .line 207
    invoke-direct {p0, p2}, Lnitro/phonestats/view/ProgressTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$8$1;->this$1:Lnitro/phonestats/settings/Prefs$8;

    #getter for: Lnitro/phonestats/settings/Prefs$8;->this$0:Lnitro/phonestats/settings/Prefs;
    invoke-static {v0}, Lnitro/phonestats/settings/Prefs$8;->access$0(Lnitro/phonestats/settings/Prefs$8;)Lnitro/phonestats/settings/Prefs;

    move-result-object v0

    #getter for: Lnitro/phonestats/settings/Prefs;->model:Lnitro/phonestats/core/IStatManager;
    invoke-static {v0}, Lnitro/phonestats/settings/Prefs;->access$0(Lnitro/phonestats/settings/Prefs;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getBackupManager()Lnitro/phonestats/backup/DroidStatsBackupManager;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/backup/DroidStatsBackupManager;->restoreData()V

    .line 212
    const/4 v0, 0x1

    iget-object v1, p0, Lnitro/phonestats/settings/Prefs$8$1;->this$1:Lnitro/phonestats/settings/Prefs$8;

    #getter for: Lnitro/phonestats/settings/Prefs$8;->this$0:Lnitro/phonestats/settings/Prefs;
    invoke-static {v1}, Lnitro/phonestats/settings/Prefs$8;->access$0(Lnitro/phonestats/settings/Prefs$8;)Lnitro/phonestats/settings/Prefs;

    move-result-object v1

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/StatsUtils;->restartApp(ZLandroid/app/Activity;)V

    .line 214
    return-void
.end method
