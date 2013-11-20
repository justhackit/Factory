.class Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "LogViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/adapters/LogViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildViewHolder"
.end annotation


# instance fields
.field actualAmount:Landroid/widget/TextView;

.field actualTitle:Landroid/widget/TextView;

.field billedAmount:Landroid/widget/TextView;

.field billedTitle:Landroid/widget/TextView;

.field contactImage:Landroid/widget/ImageView;

.field phone:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
