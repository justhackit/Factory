.class public Lnitro/phonestats/core/helper/PremiumActivator;
.super Ljava/lang/Object;
.source "PremiumActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
    }
.end annotation


# static fields
.field private static final INTENT:Ljava/lang/String; = "nitro.phonestats.key.IDroidStatsKey"

.field private static LICENCE_CHECK:Z


# instance fields
.field private ctx:Landroid/content/Context;

.field private isConnecting:Z

.field private keySource:Ljava/lang/String;

.field private keyVersion:Ljava/lang/String;

.field private service:Lnitro/phonestats/key/IDroidStatsKey;

.field private state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

.field private svcConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lnitro/phonestats/core/helper/PremiumActivator;->LICENCE_CHECK:Z

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->FREE:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    iput-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    .line 23
    iput-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;

    .line 24
    iput-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->keySource:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->keyVersion:Ljava/lang/String;

    .line 26
    new-instance v0, Lnitro/phonestats/core/helper/PremiumActivator$1;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/helper/PremiumActivator$1;-><init>(Lnitro/phonestats/core/helper/PremiumActivator;)V

    iput-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->svcConn:Landroid/content/ServiceConnection;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->isConnecting:Z

    .line 63
    iput-object p1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->ctx:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lnitro/phonestats/core/helper/PremiumActivator;->checkPackageState()V

    .line 67
    sget-boolean v0, Lnitro/phonestats/core/helper/PremiumActivator;->LICENCE_CHECK:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lnitro/phonestats/core/helper/PremiumActivator;->consultKey(Landroid/content/Context;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/core/helper/PremiumActivator;Lnitro/phonestats/key/IDroidStatsKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;

    return-void
.end method

.method static synthetic access$1(Lnitro/phonestats/core/helper/PremiumActivator;)Lnitro/phonestats/key/IDroidStatsKey;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;

    return-object v0
.end method

.method static synthetic access$2(Lnitro/phonestats/core/helper/PremiumActivator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->keySource:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lnitro/phonestats/core/helper/PremiumActivator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->keyVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lnitro/phonestats/core/helper/PremiumActivator;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->keySource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lnitro/phonestats/core/helper/PremiumActivator;Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    return-void
.end method

.method static synthetic access$6(Lnitro/phonestats/core/helper/PremiumActivator;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lnitro/phonestats/core/helper/PremiumActivator;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->keyVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lnitro/phonestats/core/helper/PremiumActivator;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->isConnecting:Z

    return-void
.end method

.method static synthetic access$9(Lnitro/phonestats/core/helper/PremiumActivator;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->svcConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private checkPackageState()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, t1:J
    iget-object v2, p0, Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    sget-object v3, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->FREE:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    if-ne v2, v3, :cond_0

    .line 116
    const-string v2, "nitro.phonestats.key"

    iget-object v3, p0, Lnitro/phonestats/core/helper/PremiumActivator;->ctx:Landroid/content/Context;

    invoke-static {v2, v3}, Lnitro/phonestats/core/helper/NitroUtils;->isPackagePresent(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->PREMIUM:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    iput-object v2, p0, Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    .line 122
    :cond_0
    return-void
.end method

.method private consultKey(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 74
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    sget-object v2, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->PREMIUM:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    if-ne v1, v2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnitro/phonestats/core/helper/PremiumActivator$2;

    invoke-direct {v1, p0, p1}, Lnitro/phonestats/core/helper/PremiumActivator$2;-><init>(Lnitro/phonestats/core/helper/PremiumActivator;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "PremiumCheckerServiceConnect"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    .end local v0           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method public getKeySource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->keySource:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lnitro/phonestats/core/helper/PremiumActivator;->checkPackageState()V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key-State: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    return-object v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->isConnecting:Z

    return v0
.end method

.method protected stopIt()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->ctx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "nitro.phonestats.key.IDroidStatsKey"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;

    .line 108
    return-void
.end method
