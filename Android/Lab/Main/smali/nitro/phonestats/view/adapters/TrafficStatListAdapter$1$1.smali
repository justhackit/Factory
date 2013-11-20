.class Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;
.super Ljava/lang/Object;
.source "TrafficStatListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;

.field private final synthetic val$bufferNew:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;

.field private final synthetic val$data:Lnitro/phonestats/core/stat/TrafficStat;

.field private final synthetic val$position:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->this$1:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iput p4, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$position:I

    iput-object p5, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$bufferNew:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->this$1:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;

    #getter for: Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;->access$0(Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;)Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iget v3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$position:I

    iget-object v4, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1$1;->val$bufferNew:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;

    #calls: Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->getView2(Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)Landroid/view/View;
    invoke-static {v0, v1, v2, v3, v4}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->access$0(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)Landroid/view/View;

    .line 126
    return-void
.end method
