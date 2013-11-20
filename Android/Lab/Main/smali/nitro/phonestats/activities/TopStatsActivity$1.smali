.class Lnitro/phonestats/activities/TopStatsActivity$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "TopStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/activities/TopStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/TopStatsActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/TopStatsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity$1;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    .line 59
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 91
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity$1;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mStatList:Landroid/widget/ListView;
    invoke-static {v1}, Lnitro/phonestats/activities/TopStatsActivity;->access$0(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/widget/ListView;

    move-result-object v0

    .line 77
    .local v0, view:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 86
    :goto_0
    return-object v0

    .line 81
    .end local v0           #view:Landroid/view/View;
    .restart local p1
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity$1;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mStatChartContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lnitro/phonestats/activities/TopStatsActivity;->access$1(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 82
    .restart local v0       #view:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 63
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
