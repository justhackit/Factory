.class public final Lnitro/phonestats/activities/HistoryActivity_;
.super Lnitro/phonestats/activities/HistoryActivity;
.source "HistoryActivity_.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnitro/phonestats/activities/HistoryActivity;-><init>()V

    return-void
.end method

.method private afterSetContentView_()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/HistoryActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lnitro/phonestats/activities/HistoryActivity_;->flipper:Landroid/support/v4/view/ViewPager;

    .line 39
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/HistoryActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnitro/phonestats/activities/HistoryActivity_;->monthName:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lnitro/phonestats/activities/HistoryActivity_;->onInit()V

    .line 41
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/HistoryActivity_;->requestWindowFeature(I)Z

    .line 35
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    new-instance v0, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lnitro/phonestats/activities/HistoryActivity_;->init_(Landroid/os/Bundle;)V

    .line 29
    invoke-super {p0, p1}, Lnitro/phonestats/activities/HistoryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/HistoryActivity_;->setContentView(I)V

    .line 31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lnitro/phonestats/activities/HistoryActivity_;->onBackPressed()V

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lnitro/phonestats/activities/HistoryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lnitro/phonestats/activities/HistoryActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lnitro/phonestats/activities/HistoryActivity_;->afterSetContentView_()V

    .line 47
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lnitro/phonestats/activities/HistoryActivity;->setContentView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Lnitro/phonestats/activities/HistoryActivity_;->afterSetContentView_()V

    .line 59
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lnitro/phonestats/activities/HistoryActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-direct {p0}, Lnitro/phonestats/activities/HistoryActivity_;->afterSetContentView_()V

    .line 53
    return-void
.end method
