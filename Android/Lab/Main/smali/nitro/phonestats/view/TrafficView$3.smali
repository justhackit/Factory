.class Lnitro/phonestats/view/TrafficView$3;
.super Ljava/lang/Object;
.source "TrafficView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/TrafficView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/TrafficView;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/TrafficView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/TrafficView$3;)Lnitro/phonestats/view/TrafficView;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 144
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->animationsDisabeled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-instance v6, Lnitro/phonestats/view/TrafficView$3$1;

    invoke-direct {v6, p0}, Lnitro/phonestats/view/TrafficView$3$1;-><init>(Lnitro/phonestats/view/TrafficView$3;)V

    .line 139
    .local v6, mShowMonthlyListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;
    iget-object v7, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    new-instance v0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;

    iget-object v1, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    iget-object v1, v1, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    iget-object v2, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    iget-object v2, v2, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    iget-object v3, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v3}, Lnitro/phonestats/view/TrafficView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v4}, Lnitro/phonestats/view/TrafficView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 140
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIZLnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;)V

    .line 139
    invoke-virtual {v7, v0}, Lnitro/phonestats/view/TrafficView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 142
    .end local v6           #mShowMonthlyListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    #getter for: Lnitro/phonestats/view/TrafficView;->mTrafficStatsAdapter:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/TrafficView;->access$2(Lnitro/phonestats/view/TrafficView;)Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    iget-object v2, p0, Lnitro/phonestats/view/TrafficView$3;->this$0:Lnitro/phonestats/view/TrafficView;

    #getter for: Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v2}, Lnitro/phonestats/view/TrafficView;->access$0(Lnitro/phonestats/view/TrafficView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    #calls: Lnitro/phonestats/view/TrafficView;->getMobileData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    invoke-static {v1, v2}, Lnitro/phonestats/view/TrafficView;->access$3(Lnitro/phonestats/view/TrafficView;Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0
.end method
