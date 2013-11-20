.class Lnitro/phonestats/activities/HistoryActivity$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/HistoryActivity;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/HistoryActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/HistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/HistoryActivity$1;->this$0:Lnitro/phonestats/activities/HistoryActivity;

    .line 65
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
    .line 95
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x5

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 81
    const/4 v1, 0x5

    if-lt p2, v1, :cond_0

    const/4 v0, 0x0

    .line 90
    .end local p1
    :goto_0
    return-object v0

    .line 83
    .restart local p1
    :cond_0
    new-instance v0, Lnitro/phonestats/view/HistoryStatView;

    iget-object v1, p0, Lnitro/phonestats/activities/HistoryActivity$1;->this$0:Lnitro/phonestats/activities/HistoryActivity;

    invoke-direct {v0, v1}, Lnitro/phonestats/view/HistoryStatView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, child:Lnitro/phonestats/view/HistoryStatView;
    neg-int v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/HistoryStatView;->setMonthShift(I)V

    .line 86
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 69
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
