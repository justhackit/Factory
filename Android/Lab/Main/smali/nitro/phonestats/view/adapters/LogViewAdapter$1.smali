.class Lnitro/phonestats/view/adapters/LogViewAdapter$1;
.super Ljava/lang/Object;
.source "LogViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/LogViewAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

.field private final synthetic val$contactImg:Landroid/widget/ImageView;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->val$contactImg:Landroid/widget/ImageView;

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
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->val$phone:Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$9(Lnitro/phonestats/view/adapters/LogViewAdapter;)Landroid/content/Context;

    move-result-object v2

    .line 193
    invoke-static {v1, v2}, Lnitro/phonestats/core/wrapper/ContactsWrapper;->getContactBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->density:F
    invoke-static {v2}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$10(Lnitro/phonestats/view/adapters/LogViewAdapter;)F

    move-result v2

    invoke-static {v2, v4}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v2

    .line 195
    iget-object v3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->density:F
    invoke-static {v3}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$10(Lnitro/phonestats/view/adapters/LogViewAdapter;)F

    move-result v3

    invoke-static {v3, v4}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v3

    const/4 v4, 0x0

    .line 193
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, mContactBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$4(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 198
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$4(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->val$phone:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "img"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->val$contactImg:Landroid/widget/ImageView;

    new-instance v2, Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;

    iget-object v3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$1;->val$contactImg:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v0}, Lnitro/phonestats/view/adapters/LogViewAdapter$1$1;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter$1;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void

    .line 197
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
