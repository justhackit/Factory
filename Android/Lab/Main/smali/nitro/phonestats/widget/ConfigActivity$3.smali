.class Lnitro/phonestats/widget/ConfigActivity$3;
.super Ljava/lang/Object;
.source "ConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/widget/ConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/widget/ConfigActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/widget/ConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/widget/ConfigActivity$3;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lnitro/phonestats/widget/ConfigActivity$3;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    #getter for: Lnitro/phonestats/widget/ConfigActivity;->flipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lnitro/phonestats/widget/ConfigActivity;->access$0(Lnitro/phonestats/widget/ConfigActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 169
    return-void
.end method
