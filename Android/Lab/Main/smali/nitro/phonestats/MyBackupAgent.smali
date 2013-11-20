.class public Lnitro/phonestats/MyBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "MyBackupAgent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field static final EXCLUDED_NUMBERS_CALL_BACKUP_KEY:Ljava/lang/String; = "excluded_numbers_calls"

.field static final PREFS:Ljava/lang/String; = "nitro.phonestats_preferences"

.field static final PREFS_BACKUP_KEY:Ljava/lang/String; = "prefs"

.field private static final TEMP_EXCLUDED_NUMBERS_CALLS_DAT:Ljava/lang/String; = "temp_excluded_numbers_calls.dat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private generateExcludedNumbersCallsTempFile()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/ExcludedNumbersManager;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, manager:Lnitro/phonestats/core/ExcludedNumbersManager;
    const-string v1, "temp_excluded_numbers_calls.dat"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnitro/phonestats/core/ExcludedNumbersManager;->saveToFileCalls(Ljava/lang/String;ZLjava/lang/String;)V

    .line 73
    return-void
.end method

.method private readExcludedNumbersCallsTempFile()V
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/ExcludedNumbersManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, manager:Lnitro/phonestats/core/ExcludedNumbersManager;
    const-string v1, "temp_excluded_numbers_calls.dat"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnitro/phonestats/core/ExcludedNumbersManager;->readFromFileCalls(Ljava/lang/String;ZLjava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lnitro/phonestats/MyBackupAgent;->generateExcludedNumbersCallsTempFile()V

    .line 85
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 88
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 44
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "nitro.phonestats_preferences"

    aput-object v3, v2, v4

    invoke-direct {v0, p0, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 47
    .local v0, helper:Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v2, "prefs"

    invoke-virtual {p0, v2, v0}, Lnitro/phonestats/MyBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 48
    new-instance v1, Landroid/app/backup/FileBackupHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "temp_excluded_numbers_calls.dat"

    aput-object v3, v2, v4

    invoke-direct {v1, p0, v2}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 49
    .local v1, helperSettingsInDB:Landroid/app/backup/FileBackupHelper;
    const-string v2, "excluded_numbers_calls"

    invoke-virtual {p0, v2, v1}, Lnitro/phonestats/MyBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 51
    .end local v0           #helper:Landroid/app/backup/SharedPreferencesBackupHelper;
    .end local v1           #helperSettingsInDB:Landroid/app/backup/FileBackupHelper;
    :cond_0
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 61
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lnitro/phonestats/MyBackupAgent;->readExcludedNumbersCallsTempFile()V

    .line 65
    :cond_0
    return-void
.end method
