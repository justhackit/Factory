.class Lnitro/phonestats/settings/Prefs$10$1;
.super Lnitro/phonestats/view/ProgressTask;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs$10;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/settings/Prefs$10;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs$10;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$10$1;->this$1:Lnitro/phonestats/settings/Prefs$10;

    .line 240
    invoke-direct {p0, p2}, Lnitro/phonestats/view/ProgressTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$10$1;->this$1:Lnitro/phonestats/settings/Prefs$10;

    #getter for: Lnitro/phonestats/settings/Prefs$10;->this$0:Lnitro/phonestats/settings/Prefs;
    invoke-static {v0}, Lnitro/phonestats/settings/Prefs$10;->access$0(Lnitro/phonestats/settings/Prefs$10;)Lnitro/phonestats/settings/Prefs;

    move-result-object v0

    #getter for: Lnitro/phonestats/settings/Prefs;->model:Lnitro/phonestats/core/IStatManager;
    invoke-static {v0}, Lnitro/phonestats/settings/Prefs;->access$0(Lnitro/phonestats/settings/Prefs;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getBackupManager()Lnitro/phonestats/backup/DroidStatsBackupManager;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/backup/DroidStatsBackupManager;->backupData()V

    .line 246
    return-void
.end method
