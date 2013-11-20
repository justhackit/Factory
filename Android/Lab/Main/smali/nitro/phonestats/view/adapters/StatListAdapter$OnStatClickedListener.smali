.class public Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;
.super Ljava/lang/Object;
.source "StatListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/adapters/StatListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnStatClickedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/StatListAdapter;


# direct methods
.method public constructor <init>(Lnitro/phonestats/view/adapters/StatListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;)Lnitro/phonestats/view/adapters/StatListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    .line 295
    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {v6, p3}, Lnitro/phonestats/view/adapters/StatListAdapter;->getItemViewType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lnitro/phonestats/activities/TopStatsActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "statid"

    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$1(Lnitro/phonestats/view/adapters/StatListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v6}, Lnitro/phonestats/core/stat/Stat;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v6, "monthshift"

    iget-object v7, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->monthShift:I
    invoke-static {v7}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$2(Lnitro/phonestats/view/adapters/StatListAdapter;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Top "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->getNumberEntries(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 305
    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$1(Lnitro/phonestats/view/adapters/StatListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/core/stat/Stat;

    iget-object v8, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnitro/phonestats/core/stat/Stat;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 308
    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$3(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030025

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 309
    .local v2, layout:Landroid/widget/LinearLayout;
    new-instance v3, Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v7

    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$1(Lnitro/phonestats/view/adapters/StatListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/core/stat/Stat;

    .line 310
    invoke-virtual {v6}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v8

    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;
    invoke-static {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$1(Lnitro/phonestats/view/adapters/StatListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v6}, Lnitro/phonestats/core/stat/Stat;->getUnitResource()I

    move-result v6

    .line 309
    invoke-direct {v3, v7, v8, v6}, Lnitro/phonestats/view/adapters/TopStatsAdapter;-><init>(Landroid/content/Context;Lnitro/phonestats/core/helper/NumberCountMap;I)V

    .line 311
    .local v3, mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;
    const v6, 0x7f0a00be

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 312
    .local v4, mListView:Landroid/widget/ListView;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 313
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 315
    const v6, 0x7f0a00c2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 316
    .local v5, upgradeBtn:Landroid/widget/Button;
    new-instance v6, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener$1;

    invoke-direct {v6, p0}, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener$1;-><init>(Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 325
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 329
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v2           #layout:Landroid/widget/LinearLayout;
    .end local v3           #mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;
    .end local v4           #mListView:Landroid/widget/ListView;
    .end local v5           #upgradeBtn:Landroid/widget/Button;
    :pswitch_1
    iget-object v6, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {v6}, Lnitro/phonestats/view/adapters/StatListAdapter;->toggleDisplayMode()V

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
