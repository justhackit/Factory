.class Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;
.super Ljava/lang/Object;
.source "LogViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/LogViewAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/adapters/LogViewAdapter$1;

.field private final synthetic val$contactImg:Landroid/widget/ImageView;

.field private final synthetic val$mContactBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter$1;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;->this$1:Lnitro/phonestats/view/adapters/LogViewAdapter$1;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;->val$contactImg:Landroid/widget/ImageView;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;->val$mContactBitmap:Landroid/graphics/Bitmap;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;->val$contactImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;->val$mContactBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    return-void
.end method
