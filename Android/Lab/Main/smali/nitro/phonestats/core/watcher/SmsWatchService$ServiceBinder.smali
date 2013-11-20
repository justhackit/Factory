.class public Lnitro/phonestats/core/watcher/SmsWatchService$ServiceBinder;
.super Landroid/os/Binder;
.source "SmsWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/watcher/SmsWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/core/watcher/SmsWatchService;


# direct methods
.method public constructor <init>(Lnitro/phonestats/core/watcher/SmsWatchService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lnitro/phonestats/core/watcher/SmsWatchService$ServiceBinder;->this$0:Lnitro/phonestats/core/watcher/SmsWatchService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lnitro/phonestats/core/watcher/SmsWatchService;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService$ServiceBinder;->this$0:Lnitro/phonestats/core/watcher/SmsWatchService;

    return-object v0
.end method
