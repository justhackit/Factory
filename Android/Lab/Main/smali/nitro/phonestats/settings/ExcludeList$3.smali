.class Lnitro/phonestats/settings/ExcludeList$3;
.super Ljava/lang/Object;
.source "ExcludeList.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeList$3;->this$0:Lnitro/phonestats/settings/ExcludeList;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 156
    if-eqz p2, :cond_1

    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList$3;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v0, v0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$3;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v1, v1, Lnitro/phonestats/settings/ExcludeList;->standarttext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList$3;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v0, v0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList$3;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v0, v0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList$3;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v0, v0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList$3;->this$0:Lnitro/phonestats/settings/ExcludeList;

    iget-object v1, v1, Lnitro/phonestats/settings/ExcludeList;->standarttext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
