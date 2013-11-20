.class Lnitro/phonestats/widget/ConfigActivity$7;
.super Ljava/lang/Object;
.source "ConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/widget/ConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/widget/ConfigActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/widget/ConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/widget/ConfigActivity$7;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 216
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v1, resultValue:Landroid/content/Intent;
    const-string v2, "appWidgetId"

    iget-object v3, p0, Lnitro/phonestats/widget/ConfigActivity$7;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    #getter for: Lnitro/phonestats/widget/ConfigActivity;->mAppWidgetId:I
    invoke-static {v3}, Lnitro/phonestats/widget/ConfigActivity;->access$2(Lnitro/phonestats/widget/ConfigActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lnitro/phonestats/widget/ConfigActivity$7;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lnitro/phonestats/widget/ConfigActivity;->setResult(ILandroid/content/Intent;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v2, "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lnitro/phonestats/widget/ConfigActivity$7;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    invoke-virtual {v2, v0}, Lnitro/phonestats/widget/ConfigActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    iget-object v2, p0, Lnitro/phonestats/widget/ConfigActivity$7;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    invoke-virtual {v2}, Lnitro/phonestats/widget/ConfigActivity;->finish()V

    .line 223
    return-void
.end method
