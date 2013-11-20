.class Lnitro/phonestats/view/HistoryStatView$3;
.super Ljava/lang/Object;
.source "HistoryStatView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/HistoryStatView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/HistoryStatView;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/HistoryStatView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/HistoryStatView$3;)Lnitro/phonestats/view/HistoryStatView;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    .line 143
    if-nez p2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView;->access$3(Lnitro/phonestats/view/HistoryStatView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lnitro/phonestats/view/HistoryStatView;->mLastRightPosition:I
    invoke-static {v0, v1}, Lnitro/phonestats/view/HistoryStatView;->access$13(Lnitro/phonestats/view/HistoryStatView;I)V

    .line 145
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView;->access$3(Lnitro/phonestats/view/HistoryStatView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    #setter for: Lnitro/phonestats/view/HistoryStatView;->mLastRightTop:I
    invoke-static {v0, v1}, Lnitro/phonestats/view/HistoryStatView;->access$14(Lnitro/phonestats/view/HistoryStatView;I)V

    .line 146
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView;->access$6(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/StatListAdapter;->getDisplayMode()Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    move-result-object v1

    #setter for: Lnitro/phonestats/view/HistoryStatView;->mLastRightMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    invoke-static {v0, v1}, Lnitro/phonestats/view/HistoryStatView;->access$15(Lnitro/phonestats/view/HistoryStatView;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 147
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    invoke-virtual {v0}, Lnitro/phonestats/view/HistoryStatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->animationsDisabeled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v6, Lnitro/phonestats/view/HistoryStatView$3$1;

    invoke-direct {v6, p0}, Lnitro/phonestats/view/HistoryStatView$3$1;-><init>(Lnitro/phonestats/view/HistoryStatView$3;)V

    .line 157
    .local v6, mShowMonthlyListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;
    iget-object v7, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    new-instance v0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView;->access$11(Lnitro/phonestats/view/HistoryStatView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView;->access$11(Lnitro/phonestats/view/HistoryStatView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    invoke-virtual {v3}, Lnitro/phonestats/view/HistoryStatView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    invoke-virtual {v4}, Lnitro/phonestats/view/HistoryStatView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 158
    invoke-direct/range {v0 .. v6}, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIZLnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;)V

    .line 157
    invoke-virtual {v7, v0}, Lnitro/phonestats/view/HistoryStatView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    .end local v6           #mShowMonthlyListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;
    :goto_1
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    sget-object v1, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->LEFT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    #setter for: Lnitro/phonestats/view/HistoryStatView;->mCurrentDisplay:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;
    invoke-static {v0, v1}, Lnitro/phonestats/view/HistoryStatView;->access$12(Lnitro/phonestats/view/HistoryStatView;Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/HistoryStatView;->access$6(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView;->access$1(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnitro/phonestats/view/HistoryStatView;->getLeftData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView;->access$16(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/view/adapters/StatListAdapter;->setNewData(Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 161
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/HistoryStatView;->access$3(Lnitro/phonestats/view/HistoryStatView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mLastLeftPosition:I
    invoke-static {v1}, Lnitro/phonestats/view/HistoryStatView;->access$17(Lnitro/phonestats/view/HistoryStatView;)I

    move-result v1

    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView$3;->this$0:Lnitro/phonestats/view/HistoryStatView;

    #getter for: Lnitro/phonestats/view/HistoryStatView;->mLastLeftTop:I
    invoke-static {v2}, Lnitro/phonestats/view/HistoryStatView;->access$18(Lnitro/phonestats/view/HistoryStatView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method
