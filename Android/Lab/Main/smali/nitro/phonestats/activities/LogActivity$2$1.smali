.class Lnitro/phonestats/activities/LogActivity$2$1;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/LogActivity$2;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/activities/LogActivity$2;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/LogActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/LogActivity$2$1;->this$1:Lnitro/phonestats/activities/LogActivity$2;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 103
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$2$1;->this$1:Lnitro/phonestats/activities/LogActivity$2;

    #getter for: Lnitro/phonestats/activities/LogActivity$2;->this$0:Lnitro/phonestats/activities/LogActivity;
    invoke-static {v0}, Lnitro/phonestats/activities/LogActivity$2;->access$0(Lnitro/phonestats/activities/LogActivity$2;)Lnitro/phonestats/activities/LogActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/activities/LogActivity;->dismissProgressOverlay()V

    .line 104
    return-void
.end method
