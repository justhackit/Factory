.class Lnitro/phonestats/view/StatView$3;
.super Ljava/lang/Object;
.source "StatView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/StatView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/StatView;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/StatView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/StatView$3;)Lnitro/phonestats/view/StatView;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    .line 134
    if-nez p2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v1, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v1}, Lnitro/phonestats/view/StatView;->access$3(Lnitro/phonestats/view/StatView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lnitro/phonestats/view/StatView;->mLastTotalPosition:I
    invoke-static {v0, v1}, Lnitro/phonestats/view/StatView;->access$12(Lnitro/phonestats/view/StatView;I)V

    .line 136
    iget-object v1, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/StatView;->access$3(Lnitro/phonestats/view/StatView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/StatView;->access$3(Lnitro/phonestats/view/StatView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    #setter for: Lnitro/phonestats/view/StatView;->mLastTotalTop:I
    invoke-static {v1, v0}, Lnitro/phonestats/view/StatView;->access$13(Lnitro/phonestats/view/StatView;I)V

    .line 137
    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v1, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v1}, Lnitro/phonestats/view/StatView;->access$6(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/StatListAdapter;->getDisplayMode()Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    move-result-object v1

    #setter for: Lnitro/phonestats/view/StatView;->mLastTotalMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    invoke-static {v0, v1}, Lnitro/phonestats/view/StatView;->access$14(Lnitro/phonestats/view/StatView;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 138
    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    invoke-virtual {v0}, Lnitro/phonestats/view/StatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->animationsDisabeled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    new-instance v6, Lnitro/phonestats/view/StatView$3$1;

    invoke-direct {v6, p0}, Lnitro/phonestats/view/StatView$3$1;-><init>(Lnitro/phonestats/view/StatView$3;)V

    .line 148
    .local v6, mShowMonthlyListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;
    iget-object v7, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    new-instance v0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;

    iget-object v1, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v1, v1, Lnitro/phonestats/view/StatView;->mStatsView:Landroid/view/View;

    iget-object v2, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v2, v2, Lnitro/phonestats/view/StatView;->mStatsView:Landroid/view/View;

    iget-object v3, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    invoke-virtual {v3}, Lnitro/phonestats/view/StatView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    invoke-virtual {v4}, Lnitro/phonestats/view/StatView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 149
    invoke-direct/range {v0 .. v6}, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIZLnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;)V

    .line 148
    invoke-virtual {v7, v0}, Lnitro/phonestats/view/StatView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    .end local v6           #mShowMonthlyListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;
    :goto_2
    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    sget-object v1, Lnitro/phonestats/view/StatView$CurrentDisplay;->MONTHLY:Lnitro/phonestats/view/StatView$CurrentDisplay;

    #setter for: Lnitro/phonestats/view/StatView;->mCurrentDisplay:Lnitro/phonestats/view/StatView$CurrentDisplay;
    invoke-static {v0, v1}, Lnitro/phonestats/view/StatView;->access$11(Lnitro/phonestats/view/StatView;Lnitro/phonestats/view/StatView$CurrentDisplay;)V

    goto :goto_0

    :cond_1
    move v0, v5

    .line 136
    goto :goto_1

    .line 151
    :cond_2
    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/StatView;->access$6(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v2, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v2}, Lnitro/phonestats/view/StatView;->access$1(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnitro/phonestats/view/StatView;->getMonthlyData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mLastMonthlyMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    invoke-static {v2}, Lnitro/phonestats/view/StatView;->access$15(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/view/adapters/StatListAdapter;->setNewData(Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 152
    iget-object v0, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/StatView;->access$3(Lnitro/phonestats/view/StatView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mLastMonthlyPosition:I
    invoke-static {v1}, Lnitro/phonestats/view/StatView;->access$16(Lnitro/phonestats/view/StatView;)I

    move-result v1

    iget-object v2, p0, Lnitro/phonestats/view/StatView$3;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mLastMonthlyTop:I
    invoke-static {v2}, Lnitro/phonestats/view/StatView;->access$17(Lnitro/phonestats/view/StatView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2
.end method
