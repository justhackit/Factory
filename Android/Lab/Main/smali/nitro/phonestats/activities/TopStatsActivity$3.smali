.class Lnitro/phonestats/activities/TopStatsActivity$3;
.super Ljava/lang/Object;
.source "TopStatsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity$3;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 141
    packed-switch p2, :pswitch_data_0

    .line 149
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$3;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #calls: Lnitro/phonestats/activities/TopStatsActivity;->refreshViews()V
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity;->access$4(Lnitro/phonestats/activities/TopStatsActivity;)V

    .line 150
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$3;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity;->access$3(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity$3;->this$0:Lnitro/phonestats/activities/TopStatsActivity;

    #getter for: Lnitro/phonestats/activities/TopStatsActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lnitro/phonestats/activities/TopStatsActivity;->access$3(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
