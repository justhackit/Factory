.class Lnitro/phonestats/activities/HistoryActivity$2$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/HistoryActivity$2;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/activities/HistoryActivity$2;

.field private final synthetic val$page:I


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/HistoryActivity$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->this$1:Lnitro/phonestats/activities/HistoryActivity$2;

    iput p2, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->val$page:I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/HistoryActivity$2$1;)Lnitro/phonestats/activities/HistoryActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->this$1:Lnitro/phonestats/activities/HistoryActivity$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->this$1:Lnitro/phonestats/activities/HistoryActivity$2;

    #getter for: Lnitro/phonestats/activities/HistoryActivity$2;->this$0:Lnitro/phonestats/activities/HistoryActivity;
    invoke-static {v0}, Lnitro/phonestats/activities/HistoryActivity$2;->access$0(Lnitro/phonestats/activities/HistoryActivity$2;)Lnitro/phonestats/activities/HistoryActivity;

    move-result-object v0

    #getter for: Lnitro/phonestats/activities/HistoryActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v0}, Lnitro/phonestats/activities/HistoryActivity;->access$0(Lnitro/phonestats/activities/HistoryActivity;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->val$page:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->createHistoricalStats(I)V

    .line 135
    const-string v0, "HistoryView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->val$page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->this$1:Lnitro/phonestats/activities/HistoryActivity$2;

    #getter for: Lnitro/phonestats/activities/HistoryActivity$2;->this$0:Lnitro/phonestats/activities/HistoryActivity;
    invoke-static {v0}, Lnitro/phonestats/activities/HistoryActivity$2;->access$0(Lnitro/phonestats/activities/HistoryActivity$2;)Lnitro/phonestats/activities/HistoryActivity;

    move-result-object v0

    iget-object v0, v0, Lnitro/phonestats/activities/HistoryActivity;->monthName:Landroid/widget/TextView;

    new-instance v1, Lnitro/phonestats/activities/HistoryActivity$2$1$1;

    iget v2, p0, Lnitro/phonestats/activities/HistoryActivity$2$1;->val$page:I

    invoke-direct {v1, p0, v2}, Lnitro/phonestats/activities/HistoryActivity$2$1$1;-><init>(Lnitro/phonestats/activities/HistoryActivity$2$1;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method
