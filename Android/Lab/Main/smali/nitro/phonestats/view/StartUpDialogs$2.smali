.class Lnitro/phonestats/view/StartUpDialogs$2;
.super Ljava/lang/Object;
.source "StartUpDialogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/StartUpDialogs;->buildPremiumWhatsNew(Landroid/content/Context;)Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$flipper:Landroid/widget/ViewFlipper;

.field private final synthetic val$flipperFree:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/ViewFlipper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/StartUpDialogs$2;->val$flipperFree:Landroid/view/View;

    iput-object p2, p0, Lnitro/phonestats/view/StartUpDialogs$2;->val$flipper:Landroid/widget/ViewFlipper;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lnitro/phonestats/view/StartUpDialogs$2;->val$flipperFree:Landroid/view/View;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 112
    iget-object v0, p0, Lnitro/phonestats/view/StartUpDialogs$2;->val$flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 114
    return-void
.end method
