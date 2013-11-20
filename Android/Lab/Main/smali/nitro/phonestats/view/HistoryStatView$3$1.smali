.class Lnitro/phonestats/view/HistoryStatView$3$1;
.super Ljava/lang/Object;
.source "HistoryStatView.java"

# interfaces
.implements Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/HistoryStatView$3;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
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
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lnitro/phonestats/view/HistoryStatView$3;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/HistoryStatView$3;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->this$1:Lnitro/phonestats/view/HistoryStatView$3;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    #getter for: Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;
    invoke-static {p1}, Lnitro/phonestats/view/HistoryStatView$3;->access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;
    invoke-static {p1}, Lnitro/phonestats/view/HistoryStatView$3;->access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;

    move-result-object v1

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView;->access$1(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/HistoryStatView;->getLeftData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onViewsSwapped(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .parameter "view1"
    .parameter "view2"
    .parameter "forward"

    .prologue
    .line 153
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->this$1:Lnitro/phonestats/view/HistoryStatView$3;

    #getter for: Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;
    invoke-static {v0}, Lnitro/phonestats/view/HistoryStatView$3;->access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/HistoryStatView;->access$6(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->data:Ljava/util/List;

    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->this$1:Lnitro/phonestats/view/HistoryStatView$3;

    #getter for: Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView$3;->access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;

    move-result-object v2

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView;->access$16(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/view/adapters/StatListAdapter;->setNewData(Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 154
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->this$1:Lnitro/phonestats/view/HistoryStatView$3;

    #getter for: Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;
    invoke-static {v0}, Lnitro/phonestats/view/HistoryStatView$3;->access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/HistoryStatView;->access$3(Lnitro/phonestats/view/HistoryStatView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->this$1:Lnitro/phonestats/view/HistoryStatView$3;

    #getter for: Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView$3;->access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;

    move-result-object v1

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mLastLeftPosition:I
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView;->access$17(Lnitro/phonestats/view/HistoryStatView;)I

    move-result v1

    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView$3$1;->this$1:Lnitro/phonestats/view/HistoryStatView$3;

    #getter for: Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView$3;->access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;

    move-result-object v2

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mLastLeftTop:I
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView;->access$18(Lnitro/phonestats/view/HistoryStatView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 155
    return-void
.end method
