.class Lnitro/phonestats/settings/ExcludeList$1;
.super Ljava/lang/Object;
.source "ExcludeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/ExcludeList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/ExcludeList;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/ExcludeList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 102
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v1, v1, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, inputText:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v1, v1, Lnitro/phonestats/settings/ExcludeList;->adapter:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    invoke-static {}, Lnitro/phonestats/settings/ExcludeList;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    .line 112
    iget-object v2, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    .line 113
    const v3, 0x7f07009f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 119
    iget-object v6, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    invoke-virtual {v6}, Lnitro/phonestats/settings/ExcludeList;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v6

    .line 120
    iget-object v7, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    invoke-virtual {v7}, Lnitro/phonestats/settings/ExcludeList;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v7

    .line 117
    invoke-static {v0, v6, v7}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    .line 121
    iget-object v7, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    .line 115
    invoke-static {v6, v7}, Lnitro/phonestats/core/helper/StatsUtils;->searchMatchingNumbers2(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 122
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 112
    invoke-virtual {v2, v3, v4}, Lnitro/phonestats/settings/ExcludeList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v1, v1, Lnitro/phonestats/settings/ExcludeList;->adapter:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v1, v1, Lnitro/phonestats/settings/ExcludeList;->adapter:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->notifyDataSetChanged()V

    .line 126
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v1, v1, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    .line 129
    iget-object v2, p0, Lnitro/phonestats/settings/ExcludeList$1;->this$0:Lnitro/phonestats/settings/ExcludeList;

    const v3, 0x7f07009e

    invoke-virtual {v2, v3}, Lnitro/phonestats/settings/ExcludeList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
