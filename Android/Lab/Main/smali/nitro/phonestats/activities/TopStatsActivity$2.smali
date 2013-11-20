.class Lnitro/phonestats/activities/TopStatsActivity$2;
.super Ljava/lang/Object;
.source "TopStatsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/TopStatsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity$2;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 135
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 129
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$2;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mViewSwitcher:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity;->access$2(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$2;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mViewSwitcher:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity;->access$2(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method
