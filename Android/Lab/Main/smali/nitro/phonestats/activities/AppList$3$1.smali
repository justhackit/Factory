.class Lnitro/phonestats/activities/AppList$3$1;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/AppList$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/activities/AppList$3;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/AppList$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/AppList$3$1;->this$1:Lnitro/phonestats/activities/AppList$3;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lnitro/phonestats/activities/AppList$3$1;->this$1:Lnitro/phonestats/activities/AppList$3;

    #getter for: Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;
    invoke-static {v0}, Lnitro/phonestats/activities/AppList$3;->access$0(Lnitro/phonestats/activities/AppList$3;)Lnitro/phonestats/activities/AppList;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/activities/AppList$3$1;->this$1:Lnitro/phonestats/activities/AppList$3;

    #getter for: Lnitro/phonestats/activities/AppList$3;->this$0:Lnitro/phonestats/activities/AppList;
    invoke-static {v1}, Lnitro/phonestats/activities/AppList$3;->access$0(Lnitro/phonestats/activities/AppList$3;)Lnitro/phonestats/activities/AppList;

    move-result-object v1

    #getter for: Lnitro/phonestats/activities/AppList;->toggle:Z
    invoke-static {v1}, Lnitro/phonestats/activities/AppList;->access$3(Lnitro/phonestats/activities/AppList;)Z

    move-result v1

    #calls: Lnitro/phonestats/activities/AppList;->createAppStats(Z)V
    invoke-static {v0, v1}, Lnitro/phonestats/activities/AppList;->access$6(Lnitro/phonestats/activities/AppList;Z)V

    .line 143
    return-void
.end method
