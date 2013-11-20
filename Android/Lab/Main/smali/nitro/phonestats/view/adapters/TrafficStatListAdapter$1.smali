.class Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;
.super Ljava/lang/Object;
.source "TrafficStatListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

.field private final synthetic val$data:Lnitro/phonestats/core/stat/TrafficStat;

.field private final synthetic val$parent:Landroid/view/ViewGroup;

.field private final synthetic val$position:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;Lnitro/phonestats/core/stat/TrafficStat;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$view:Landroid/view/View;

    iput p5, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$position:I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;)Lnitro/phonestats/view/adapters/TrafficStatListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 115
    new-instance v5, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;

    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    invoke-direct {v5, v0}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;-><init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;)V

    .line 116
    .local v5, bufferNew:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/stat/TrafficStat;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->totalValue:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-virtual {v0, v1, v3, v4, v2}, Lnitro/phonestats/core/stat/TrafficStat;->toString(Landroid/content/Context;ZZLnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->downValue:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-virtual {v0, v1, v3, v4, v2}, Lnitro/phonestats/core/stat/TrafficStat;->toString(Landroid/content/Context;ZZLnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->upValue:Ljava/lang/String;

    .line 119
    const-string v0, "use unbuffered"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 121
    iget-object v6, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$view:Landroid/view/View;

    new-instance v0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iget v4, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->val$position:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;-><init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
