.class Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;
.super Ljava/lang/Object;
.source "TrafficStatListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->getView2(Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

.field private final synthetic val$data:Lnitro/phonestats/core/stat/TrafficStat;

.field private final synthetic val$df:Ljava/text/SimpleDateFormat;

.field private final synthetic val$infoData:Ljava/util/List;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;Ljava/util/List;Lnitro/phonestats/core/stat/TrafficStat;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$infoData:Ljava/util/List;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    iput-object p4, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$df:Ljava/text/SimpleDateFormat;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 190
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$infoData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 191
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$infoData:Ljava/util/List;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->access$1(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/TrafficStat;->getDescriptionResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$data:Lnitro/phonestats/core/stat/TrafficStat;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/TrafficStat;->getLastReset()Ljava/util/Date;

    move-result-object v0

    .line 193
    .local v0, lastReset:Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$infoData:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->access$1(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07018b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->val$infoData:Ljava/util/List;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->access$1(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07018a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
