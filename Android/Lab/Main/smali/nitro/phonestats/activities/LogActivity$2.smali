.class Lnitro/phonestats/activities/LogActivity$2;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/LogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/LogActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/LogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/LogActivity$2;->this$0:Lnitro/phonestats/activities/LogActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/LogActivity$2;)Lnitro/phonestats/activities/LogActivity;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$2;->this$0:Lnitro/phonestats/activities/LogActivity;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 95
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$2;->this$0:Lnitro/phonestats/activities/LogActivity;

    iget-object v1, p0, Lnitro/phonestats/activities/LogActivity$2;->this$0:Lnitro/phonestats/activities/LogActivity;

    const v2, 0x7f070119

    invoke-virtual {v1, v2}, Lnitro/phonestats/activities/LogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    #calls: Lnitro/phonestats/activities/LogActivity;->showProgressOverlay(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lnitro/phonestats/activities/LogActivity;->access$1(Lnitro/phonestats/activities/LogActivity;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$2;->this$0:Lnitro/phonestats/activities/LogActivity;

    #getter for: Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lnitro/phonestats/activities/LogActivity;->access$0(Lnitro/phonestats/activities/LogActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 100
    new-instance v1, Lnitro/phonestats/activities/LogActivity$2$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/activities/LogActivity$2$1;-><init>(Lnitro/phonestats/activities/LogActivity$2;)V

    .line 99
    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 106
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 91
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
