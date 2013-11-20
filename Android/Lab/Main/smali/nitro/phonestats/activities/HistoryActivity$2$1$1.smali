.class Lnitro/phonestats/activities/HistoryActivity$2$1$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/HistoryActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnitro/phonestats/activities/HistoryActivity$2$1;

.field private final synthetic val$page:I


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/HistoryActivity$2$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/HistoryActivity$2$1$1;->this$2:Lnitro/phonestats/activities/HistoryActivity$2$1;

    iput p2, p0, Lnitro/phonestats/activities/HistoryActivity$2$1$1;->val$page:I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity$2$1$1;->this$2:Lnitro/phonestats/activities/HistoryActivity$2$1;

    #getter for: Lnitro/phonestats/activities/HistoryActivity$2$1;->this$1:Lnitro/phonestats/activities/HistoryActivity$2;
    invoke-static {v0}, Lnitro/phonestats/activities/HistoryActivity$2$1;->access$0(Lnitro/phonestats/activities/HistoryActivity$2$1;)Lnitro/phonestats/activities/HistoryActivity$2;

    move-result-object v0

    #getter for: Lnitro/phonestats/activities/HistoryActivity$2;->this$0:Lnitro/phonestats/activities/HistoryActivity;
    invoke-static {v0}, Lnitro/phonestats/activities/HistoryActivity$2;->access$0(Lnitro/phonestats/activities/HistoryActivity$2;)Lnitro/phonestats/activities/HistoryActivity;

    move-result-object v0

    iget-object v0, v0, Lnitro/phonestats/activities/HistoryActivity;->monthName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Month: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnitro/phonestats/activities/HistoryActivity$2$1$1;->val$page:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity$2$1$1;->this$2:Lnitro/phonestats/activities/HistoryActivity$2$1;

    #getter for: Lnitro/phonestats/activities/HistoryActivity$2$1;->this$1:Lnitro/phonestats/activities/HistoryActivity$2;
    invoke-static {v0}, Lnitro/phonestats/activities/HistoryActivity$2$1;->access$0(Lnitro/phonestats/activities/HistoryActivity$2$1;)Lnitro/phonestats/activities/HistoryActivity$2;

    move-result-object v0

    #getter for: Lnitro/phonestats/activities/HistoryActivity$2;->this$0:Lnitro/phonestats/activities/HistoryActivity;
    invoke-static {v0}, Lnitro/phonestats/activities/HistoryActivity$2;->access$0(Lnitro/phonestats/activities/HistoryActivity$2;)Lnitro/phonestats/activities/HistoryActivity;

    move-result-object v0

    iget-object v0, v0, Lnitro/phonestats/activities/HistoryActivity;->flipper:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lnitro/phonestats/activities/HistoryActivity$2$1$1;->val$page:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/HistoryStatView;

    invoke-virtual {v0}, Lnitro/phonestats/view/HistoryStatView;->refreshList()V

    .line 143
    return-void
.end method
