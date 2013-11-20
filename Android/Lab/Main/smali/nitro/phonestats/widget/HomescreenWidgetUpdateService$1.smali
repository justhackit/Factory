.class Lnitro/phonestats/widget/HomescreenWidgetUpdateService$1;
.super Ljava/lang/Object;
.source "HomescreenWidgetUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/widget/HomescreenWidgetUpdateService;


# direct methods
.method constructor <init>(Lnitro/phonestats/widget/HomescreenWidgetUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService$1;->this$0:Lnitro/phonestats/widget/HomescreenWidgetUpdateService;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService$1;->this$0:Lnitro/phonestats/widget/HomescreenWidgetUpdateService;

    iget-object v1, p0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService$1;->this$0:Lnitro/phonestats/widget/HomescreenWidgetUpdateService;

    invoke-virtual {v1}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->updateWidget(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService$1;->this$0:Lnitro/phonestats/widget/HomescreenWidgetUpdateService;

    invoke-virtual {v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->stopSelf()V

    .line 45
    return-void
.end method
