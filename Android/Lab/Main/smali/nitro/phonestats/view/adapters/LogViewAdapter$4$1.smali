.class Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;
.super Ljava/lang/Object;
.source "LogViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/LogViewAdapter$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/adapters/LogViewAdapter$4;

.field private final synthetic val$holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

.field private final synthetic val$numberToDisplay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter$4;Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;->this$1:Lnitro/phonestats/view/adapters/LogViewAdapter$4;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;->val$holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;->val$numberToDisplay:Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;->val$holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

    iget-object v0, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->header:Landroid/widget/TextView;

    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$4$1;->val$numberToDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method
