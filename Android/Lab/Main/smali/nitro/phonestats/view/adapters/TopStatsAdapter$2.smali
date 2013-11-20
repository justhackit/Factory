.class Lnitro/phonestats/view/adapters/TopStatsAdapter$2;
.super Ljava/lang/Object;
.source "TopStatsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/TopStatsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

.field private final synthetic val$contactImg:Landroid/widget/ImageView;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->val$contactImg:Landroid/widget/ImageView;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x2d

    .line 193
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->val$phone:Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v2, v2, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {v1, v2}, Lnitro/phonestats/core/wrapper/ContactsWrapper;->getContactBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget v2, v2, Lnitro/phonestats/view/adapters/TopStatsAdapter;->density:F

    invoke-static {v2, v4}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v2

    .line 195
    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget v3, v3, Lnitro/phonestats/view/adapters/TopStatsAdapter;->density:F

    invoke-static {v3, v4}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v3

    const/4 v4, 0x0

    .line 193
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, mContactBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v1, v1, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->val$phone:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->val$contactImg:Landroid/widget/ImageView;

    new-instance v2, Lnitro/phonestats/view/adapters/TopStatsAdapter$2$1;

    iget-object v3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;->val$contactImg:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v0}, Lnitro/phonestats/view/adapters/TopStatsAdapter$2$1;-><init>(Lnitro/phonestats/view/adapters/TopStatsAdapter$2;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method
