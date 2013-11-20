.class Lnitro/phonestats/view/StatView$2$1;
.super Ljava/lang/Object;
.source "StatView.java"

# interfaces
.implements Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/StatView$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
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

.field final synthetic this$1:Lnitro/phonestats/view/StatView$2;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/StatView$2;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/StatView$2$1;->this$1:Lnitro/phonestats/view/StatView$2;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    #getter for: Lnitro/phonestats/view/StatView$2;->this$0:Lnitro/phonestats/view/StatView;
    invoke-static {p1}, Lnitro/phonestats/view/StatView$2;->access$0(Lnitro/phonestats/view/StatView$2;)Lnitro/phonestats/view/StatView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/StatView$2;->this$0:Lnitro/phonestats/view/StatView;
    invoke-static {p1}, Lnitro/phonestats/view/StatView$2;->access$0(Lnitro/phonestats/view/StatView$2;)Lnitro/phonestats/view/StatView;

    move-result-object v1

    #getter for: Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v1}, Lnitro/phonestats/view/StatView;->access$1(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/StatView;->getTotalData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/StatView$2$1;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onViewsSwapped(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .parameter "view1"
    .parameter "view2"
    .parameter "forward"

    .prologue
    .line 118
    iget-object v0, p0, Lnitro/phonestats/view/StatView$2$1;->this$1:Lnitro/phonestats/view/StatView$2;

    #getter for: Lnitro/phonestats/view/StatView$2;->this$0:Lnitro/phonestats/view/StatView;
    invoke-static {v0}, Lnitro/phonestats/view/StatView$2;->access$0(Lnitro/phonestats/view/StatView$2;)Lnitro/phonestats/view/StatView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/StatView;->mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/StatView;->access$6(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/StatView$2$1;->data:Ljava/util/List;

    iget-object v2, p0, Lnitro/phonestats/view/StatView$2$1;->this$1:Lnitro/phonestats/view/StatView$2;

    #getter for: Lnitro/phonestats/view/StatView$2;->this$0:Lnitro/phonestats/view/StatView;
    invoke-static {v2}, Lnitro/phonestats/view/StatView$2;->access$0(Lnitro/phonestats/view/StatView$2;)Lnitro/phonestats/view/StatView;

    move-result-object v2

    #getter for: Lnitro/phonestats/view/StatView;->mLastTotalMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    invoke-static {v2}, Lnitro/phonestats/view/StatView;->access$8(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/view/adapters/StatListAdapter;->setNewData(Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 119
    iget-object v0, p0, Lnitro/phonestats/view/StatView$2$1;->this$1:Lnitro/phonestats/view/StatView$2;

    #getter for: Lnitro/phonestats/view/StatView$2;->this$0:Lnitro/phonestats/view/StatView;
    invoke-static {v0}, Lnitro/phonestats/view/StatView$2;->access$0(Lnitro/phonestats/view/StatView$2;)Lnitro/phonestats/view/StatView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/StatView;->access$3(Lnitro/phonestats/view/StatView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/StatView$2$1;->this$1:Lnitro/phonestats/view/StatView$2;

    #getter for: Lnitro/phonestats/view/StatView$2;->this$0:Lnitro/phonestats/view/StatView;
    invoke-static {v1}, Lnitro/phonestats/view/StatView$2;->access$0(Lnitro/phonestats/view/StatView$2;)Lnitro/phonestats/view/StatView;

    move-result-object v1

    #getter for: Lnitro/phonestats/view/StatView;->mLastTotalPosition:I
    invoke-static {v1}, Lnitro/phonestats/view/StatView;->access$9(Lnitro/phonestats/view/StatView;)I

    move-result v1

    iget-object v2, p0, Lnitro/phonestats/view/StatView$2$1;->this$1:Lnitro/phonestats/view/StatView$2;

    #getter for: Lnitro/phonestats/view/StatView$2;->this$0:Lnitro/phonestats/view/StatView;
    invoke-static {v2}, Lnitro/phonestats/view/StatView$2;->access$0(Lnitro/phonestats/view/StatView$2;)Lnitro/phonestats/view/StatView;

    move-result-object v2

    #getter for: Lnitro/phonestats/view/StatView;->mLastTotalTop:I
    invoke-static {v2}, Lnitro/phonestats/view/StatView;->access$10(Lnitro/phonestats/view/StatView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 120
    return-void
.end method
