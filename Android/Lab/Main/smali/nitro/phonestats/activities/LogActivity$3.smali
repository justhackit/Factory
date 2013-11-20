.class Lnitro/phonestats/activities/LogActivity$3;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/LogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/LogActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/LogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/LogActivity$3;->this$0:Lnitro/phonestats/activities/LogActivity;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$3;->this$0:Lnitro/phonestats/activities/LogActivity;

    #calls: Lnitro/phonestats/activities/LogActivity;->dismissSearchOverlay()V
    invoke-static {v0}, Lnitro/phonestats/activities/LogActivity;->access$2(Lnitro/phonestats/activities/LogActivity;)V

    .line 114
    return-void
.end method
