.class Lnitro/phonestats/view/adapters/LogViewAdapter$4;
.super Ljava/lang/Object;
.source "LogViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/LogViewAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

.field private final synthetic val$holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4;->val$holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 332
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    iget-object v3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4;->val$phone:Ljava/lang/String;

    #calls: Lnitro/phonestats/view/adapters/LogViewAdapter;->addContactToTmpData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$5(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, nameAndPhoneType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 334
    move-object v1, v0

    .line 335
    .local v1, numberToDisplay:Ljava/lang/String;
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4;->val$holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

    iget-object v2, v2, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->header:Landroid/widget/TextView;

    new-instance v3, Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;

    iget-object v4, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4;->val$holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

    invoke-direct {v3, p0, v4, v1}, Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter$4;Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 342
    .end local v1           #numberToDisplay:Ljava/lang/String;
    :cond_0
    return-void
.end method
