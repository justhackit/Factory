.class Lnitro/phonestats/backup/DroidStatsBackupManager$3;
.super Ljava/lang/Object;
.source "DroidStatsBackupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/backup/DroidStatsBackupManager;->exportCSV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/backup/DroidStatsBackupManager;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/backup/DroidStatsBackupManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager$3;->this$0:Lnitro/phonestats/backup/DroidStatsBackupManager;

    iput-object p2, p0, Lnitro/phonestats/backup/DroidStatsBackupManager$3;->val$path:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lnitro/phonestats/backup/DroidStatsBackupManager$3;->this$0:Lnitro/phonestats/backup/DroidStatsBackupManager;

    #getter for: Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lnitro/phonestats/backup/DroidStatsBackupManager;->access$0(Lnitro/phonestats/backup/DroidStatsBackupManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exported to\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnitro/phonestats/backup/DroidStatsBackupManager$3;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    return-void
.end method
