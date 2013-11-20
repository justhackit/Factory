.class Lnitro/phonestats/activities/TopStatsActivity$6;
.super Ljava/lang/Object;
.source "TopStatsActivity.java"

# interfaces
.implements Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/TopStatsActivity;->initChartView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/TopStatsActivity;

.field private final synthetic val$mUserOverlay:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/TopStatsActivity;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    iput-object p2, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/TopStatsActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity$6;->showUserOverlay()V

    return-void
.end method

.method static synthetic access$1(Lnitro/phonestats/activities/TopStatsActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity$6;->dismissUserOverlay()V

    return-void
.end method

.method static synthetic access$2(Lnitro/phonestats/activities/TopStatsActivity$6;)Lnitro/phonestats/activities/TopStatsActivity;
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    return-object v0
.end method

.method private dismissUserOverlay()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 291
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 292
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 295
    :cond_0
    return-void
.end method

.method private showUserOverlay()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public onChartSeriesClicked(ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "name"
    .parameter "value"
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 264
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    new-instance v1, Lnitro/phonestats/activities/TopStatsActivity$6$1;

    iget-object v2, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v2, p1}, Lnitro/phonestats/activities/TopStatsActivity$6$1;-><init>(Lnitro/phonestats/activities/TopStatsActivity$6;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method public onChartSeriesUnfocused()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6;->val$mUserOverlay:Landroid/view/ViewGroup;

    new-instance v1, Lnitro/phonestats/activities/TopStatsActivity$6$2;

    invoke-direct {v1, p0}, Lnitro/phonestats/activities/TopStatsActivity$6$2;-><init>(Lnitro/phonestats/activities/TopStatsActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method
