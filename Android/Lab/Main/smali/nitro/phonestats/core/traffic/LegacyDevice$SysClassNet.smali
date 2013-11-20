.class public final Lnitro/phonestats/core/traffic/LegacyDevice$SysClassNet;
.super Ljava/lang/Object;
.source "LegacyDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/traffic/LegacyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SysClassNet"
.end annotation


# static fields
.field public static final CARRIER:Ljava/lang/String; = "/carrier"

.field public static final RX_BYTES:Ljava/lang/String; = "/statistics/rx_bytes"

.field public static final SYS_CLASS_NET:Ljava/lang/String; = "/sys/class/net/"

.field private static final TAG:Ljava/lang/String; = "sys"

.field public static final TX_BYTES:Ljava/lang/String; = "/statistics/tx_bytes"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static isUp(Ljava/lang/String;)Z
    .locals 3
    .parameter "inter"

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/carrier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    return v1
.end method
