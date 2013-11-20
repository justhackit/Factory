.class Lnitro/phonestats/widget/ConfigActivity$1;
.super Ljava/lang/Object;
.source "ConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/widget/ConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/widget/ConfigActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/widget/ConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/widget/ConfigActivity$1;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnitro/phonestats/widget/ConfigActivity$1;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    invoke-virtual {v0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    .line 79
    return-void
.end method
