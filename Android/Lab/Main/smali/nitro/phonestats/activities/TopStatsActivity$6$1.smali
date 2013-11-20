.class Lnitro/phonestats/activities/TopStatsActivity$6$1;
.super Ljava/lang/Object;
.source "TopStatsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/TopStatsActivity$6;->onChartSeriesClicked(ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/activities/TopStatsActivity$6;

.field private final synthetic val$mUserOverlay:Landroid/view/ViewGroup;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/TopStatsActivity$6;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->this$1:Lnitro/phonestats/activities/TopStatsActivity$6;

    iput-object p2, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->val$mUserOverlay:Landroid/view/ViewGroup;

    iput p3, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->val$position:I

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 267
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->val$mUserOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 268
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->val$mUserOverlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->this$1:Lnitro/phonestats/activities/TopStatsActivity$6;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity$6;->this$0:Lnitro/phonestats/activities/TopStatsActivity;
    invoke-static {v1}, Lnitro/phonestats/activities/TopStatsActivity$6;->access$2(Lnitro/phonestats/activities/TopStatsActivity$6;)Lnitro/phonestats/activities/TopStatsActivity;

    move-result-object v1

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;
    invoke-static {v1}, Lnitro/phonestats/activities/TopStatsActivity;->access$8(Lnitro/phonestats/activities/TopStatsActivity;)Lnitro/phonestats/view/adapters/TopStatsAdapter;

    move-result-object v1

    iget v2, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->val$position:I

    const/4 v3, 0x0

    iget-object v4, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->val$mUserOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->val$mUserOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 270
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$6$1;->this$1:Lnitro/phonestats/activities/TopStatsActivity$6;

    #calls: Lnitro/phonestats/activities/TopStatsActivity$6;->showUserOverlay()V
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity$6;->access$0(Lnitro/phonestats/activities/TopStatsActivity$6;)V

    .line 271
    return-void
.end method
