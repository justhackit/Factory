.class public Lnitro/phonestats/backup/WrapBackupManager;
.super Ljava/lang/Object;
.source "WrapBackupManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private wrappedInstance:Landroid/app/backup/BackupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    :try_start_0
    const-string v1, "android.app.backup.BackupManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 19
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/backup/WrapBackupManager;->wrappedInstance:Landroid/app/backup/BackupManager;

    .line 32
    return-void
.end method

.method public static checkAvailable()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnitro/phonestats/backup/WrapBackupManager;->wrappedInstance:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 27
    return-void
.end method
