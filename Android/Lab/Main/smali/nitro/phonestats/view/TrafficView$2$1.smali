.class Lnitro/phonestats/view/TrafficView$2$1;
.super Ljava/lang/Object;
.source "TrafficView.java"

# interfaces
.implements Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/TrafficView$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/TrafficStat;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lnitro/phonestats/view/TrafficView$2;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/TrafficView$2;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/TrafficView$2$1;->this$1:Lnitro/phonestats/view/TrafficView$2;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    #getter for: Lnitro/phonestats/view/TrafficView$2;->this$0:Lnitro/phonestats/view/TrafficView;
    invoke-static {p1}, Lnitro/phonestats/view/TrafficView$2;->access$0(Lnitro/phonestats/view/TrafficView$2;)Lnitro/phonestats/view/TrafficView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/TrafficView$2;->this$0:Lnitro/phonestats/view/TrafficView;
    invoke-static {p1}, Lnitro/phonestats/view/TrafficView$2;->access$0(Lnitro/phonestats/view/TrafficView$2;)Lnitro/phonestats/view/TrafficView;

    move-result-object v1

    #getter for: Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v1}, Lnitro/phonestats/view/TrafficView;->access$0(Lnitro/phonestats/view/TrafficView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    #calls: Lnitro/phonestats/view/TrafficView;->getWifiData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    invoke-static {v0, v1}, Lnitro/phonestats/view/TrafficView;->access$1(Lnitro/phonestats/view/TrafficView;Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/TrafficView$2$1;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onViewsSwapped(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2
    .parameter "view1"
    .parameter "view2"
    .parameter "forward"

    .prologue
    .line 108
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$2$1;->this$1:Lnitro/phonestats/view/TrafficView$2;

    #getter for: Lnitro/phonestats/view/TrafficView$2;->this$0:Lnitro/phonestats/view/TrafficView;
    invoke-static {v0}, Lnitro/phonestats/view/TrafficView$2;->access$0(Lnitro/phonestats/view/TrafficView$2;)Lnitro/phonestats/view/TrafficView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/TrafficView;->mTrafficStatsAdapter:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/TrafficView;->access$2(Lnitro/phonestats/view/TrafficView;)Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/TrafficView$2$1;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->setNewData(Ljava/util/List;)V

    .line 109
    return-void
.end method
