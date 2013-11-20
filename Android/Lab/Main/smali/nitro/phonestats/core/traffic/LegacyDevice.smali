.class public Lnitro/phonestats/core/traffic/LegacyDevice;
.super Ljava/lang/Object;
.source "LegacyDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/traffic/LegacyDevice$SysClassNet;
    }
.end annotation


# static fields
.field public static final CELL_INTERFACES:[Ljava/lang/String;

.field public static final WIFI_INTERFACES:[Ljava/lang/String;

.field private static instance:Lnitro/phonestats/core/traffic/LegacyDevice;


# instance fields
.field private mCell:Ljava/lang/String;

.field private mInterfaces:[Ljava/lang/String;

.field private mWiFi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lnitro/phonestats/core/traffic/LegacyDevice;->instance:Lnitro/phonestats/core/traffic/LegacyDevice;

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string v1, "rmnet0"

    aput-object v1, v0, v3

    const-string v1, "pdp0"

    aput-object v1, v0, v4

    const-string v1, "ppp0"

    aput-object v1, v0, v5

    const-string v1, "vsnet0"

    aput-object v1, v0, v6

    const-string v1, "rmnet_sdio0"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "qmi0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ccinet0"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lnitro/phonestats/core/traffic/LegacyDevice;->CELL_INTERFACES:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string v1, "eth0"

    aput-object v1, v0, v3

    const-string v1, "tiwlan0"

    aput-object v1, v0, v4

    const-string v1, "wlan0"

    aput-object v1, v0, v5

    const-string v1, "athwlan0"

    aput-object v1, v0, v6

    const-string v1, "eth1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mlan0"

    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lnitro/phonestats/core/traffic/LegacyDevice;->WIFI_INTERFACES:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mInterfaces:[Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mCell:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mWiFi:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static declared-synchronized getDevice()Lnitro/phonestats/core/traffic/LegacyDevice;
    .locals 3

    .prologue
    .line 31
    const-class v1, Lnitro/phonestats/core/traffic/LegacyDevice;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnitro/phonestats/core/traffic/LegacyDevice;->instance:Lnitro/phonestats/core/traffic/LegacyDevice;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Device: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lnitro/phonestats/core/traffic/LegacyDevice;

    invoke-direct {v0}, Lnitro/phonestats/core/traffic/LegacyDevice;-><init>()V

    sput-object v0, Lnitro/phonestats/core/traffic/LegacyDevice;->instance:Lnitro/phonestats/core/traffic/LegacyDevice;

    .line 36
    :cond_0
    sget-object v0, Lnitro/phonestats/core/traffic/LegacyDevice;->instance:Lnitro/phonestats/core/traffic/LegacyDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCell()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    iget-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mCell:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 60
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "GT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "pdp0"

    iput-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mCell:Ljava/lang/String;

    .line 72
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cell interface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mCell:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 74
    :cond_1
    iget-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mCell:Ljava/lang/String;

    return-object v1

    .line 62
    :cond_2
    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "eth0"

    iput-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mCell:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_3
    sget-object v2, Lnitro/phonestats/core/traffic/LegacyDevice;->CELL_INTERFACES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 66
    .local v0, inter:Ljava/lang/String;
    invoke-static {v0}, Lnitro/phonestats/core/traffic/LegacyDevice$SysClassNet;->isUp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    iput-object v0, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mCell:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final declared-synchronized getInterfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mInterfaces:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/LegacyDevice;->getCell()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/LegacyDevice;->getCell()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/LegacyDevice;->getWiFi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/LegacyDevice;->getWiFi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mInterfaces:[Ljava/lang/String;

    .line 110
    .end local v0           #tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mInterfaces:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getWiFi()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    iget-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mWiFi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 80
    sget-object v2, Lnitro/phonestats/core/traffic/LegacyDevice;->WIFI_INTERFACES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 91
    :cond_0
    :goto_1
    iget-object v1, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mWiFi:Ljava/lang/String;

    return-object v1

    .line 80
    :cond_1
    aget-object v0, v2, v1

    .line 81
    .local v0, inter:Ljava/lang/String;
    invoke-static {v0}, Lnitro/phonestats/core/traffic/LegacyDevice$SysClassNet;->isUp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WiFi interface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 84
    iput-object v0, p0, Lnitro/phonestats/core/traffic/LegacyDevice;->mWiFi:Ljava/lang/String;

    goto :goto_1

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
