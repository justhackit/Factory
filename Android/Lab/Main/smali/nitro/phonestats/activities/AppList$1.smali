.class Lnitro/phonestats/activities/AppList$1;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/AppList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 95
    .local v1, textlength:I
    if-nez v1, :cond_0

    .line 96
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->mStatList:Landroid/widget/ListView;
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$0(Lnitro/phonestats/activities/AppList;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v3, v3, Lnitro/phonestats/activities/AppList;->adapter_no_filter:Lnitro/phonestats/view/adapters/AppStatsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->items_filter:Ljava/util/List;
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$1(Lnitro/phonestats/activities/AppList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 107
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->mStatList:Landroid/widget/ListView;
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$0(Lnitro/phonestats/activities/AppList;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lnitro/phonestats/view/adapters/AppStatsAdapter;

    iget-object v4, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    const v5, 0x7f030002

    iget-object v6, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->items_filter:Ljava/util/List;
    invoke-static {v6}, Lnitro/phonestats/activities/AppList;->access$1(Lnitro/phonestats/activities/AppList;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lnitro/phonestats/view/adapters/AppStatsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList$AppTrafficValue;->appName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 102
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList$AppTrafficValue;->appName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    #getter for: Lnitro/phonestats/activities/AppList;->items_filter:Ljava/util/List;
    invoke-static {v2}, Lnitro/phonestats/activities/AppList;->access$1(Lnitro/phonestats/activities/AppList;)Ljava/util/List;

    move-result-object v3

    iget-object v2, p0, Lnitro/phonestats/activities/AppList$1;->this$0:Lnitro/phonestats/activities/AppList;

    iget-object v2, v2, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 90
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 86
    return-void
.end method
