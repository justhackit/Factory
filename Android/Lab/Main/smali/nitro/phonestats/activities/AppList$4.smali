.class Lnitro/phonestats/activities/AppList$4;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/AppList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/AppList;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/AppList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/AppList$4;->this$0:Lnitro/phonestats/activities/AppList;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$4;->this$0:Lnitro/phonestats/activities/AppList;

    #calls: Lnitro/phonestats/activities/AppList;->showSearchOverlay()V
    invoke-static {v0}, Lnitro/phonestats/activities/AppList;->access$7(Lnitro/phonestats/activities/AppList;)V

    .line 153
    return-void
.end method
