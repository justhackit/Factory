.class Lnitro/phonestats/activities/AppList$3;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/AppList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/AppList;

.field private final synthetic val$switchButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/AppList;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    iput-object p2, p0, Lnitro/phonestats/activities/AppList$3;->val$switchButton:Landroid/widget/Button;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/AppList$3;)Lnitro/phonestats/activities/AppList;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v8, 0x7f070041

    const v7, 0x7f070040

    const v5, 0x7f0200a8

    const v4, 0x7f020090

    const/4 v3, 0x0

    .line 124
    iget-object v6, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->toggle:Z
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$3(Lnitro/phonestats/activities/AppList;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    #setter for: Lnitro/phonestats/activities/AppList;->toggle:Z
    invoke-static {v6, v2}, Lnitro/phonestats/activities/AppList;->access$4(Lnitro/phonestats/activities/AppList;Z)V

    .line 125
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #calls: Lnitro/phonestats/activities/AppList;->dismissSearchOverlay()V
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$2(Lnitro/phonestats/activities/AppList;)V

    .line 126
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList;->adapter_no_filter:Lnitro/phonestats/view/adapters/AppStatsAdapter;

    invoke-virtual {v2}, Lnitro/phonestats/view/adapters/AppStatsAdapter;->notifyDataSetChanged()V

    .line 128
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->toggle:Z
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$3(Lnitro/phonestats/activities/AppList;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    invoke-virtual {v2, v8}, Lnitro/phonestats/activities/AppList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, title:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->toggle:Z
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$3(Lnitro/phonestats/activities/AppList;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v4

    .line 131
    .local v0, iconResource:I
    :goto_2
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->val$switchButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->val$switchButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v3, v0, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 134
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->toggle:Z
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$3(Lnitro/phonestats/activities/AppList;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    invoke-virtual {v2, v8}, Lnitro/phonestats/activities/AppList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_3
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->toggle:Z
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$3(Lnitro/phonestats/activities/AppList;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v4

    .line 136
    :goto_4
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->mHeaderView:Landroid/view/View;
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$5(Lnitro/phonestats/activities/AppList;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->mHeaderView:Landroid/view/View;
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$5(Lnitro/phonestats/activities/AppList;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lnitro/phonestats/activities/AppList$3$1;

    invoke-direct {v3, p0}, Lnitro/phonestats/activities/AppList$3$1;-><init>(Lnitro/phonestats/activities/AppList$3;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 145
    return-void

    .line 124
    .end local v0           #iconResource:I
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    invoke-virtual {v2, v7}, Lnitro/phonestats/activities/AppList;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .restart local v1       #title:Ljava/lang/String;
    :cond_2
    move v0, v5

    .line 129
    goto :goto_2

    .line 134
    .restart local v0       #iconResource:I
    :cond_3
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;

    invoke-virtual {v2, v7}, Lnitro/phonestats/activities/AppList;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move v0, v5

    .line 135
    goto :goto_4
.end method
