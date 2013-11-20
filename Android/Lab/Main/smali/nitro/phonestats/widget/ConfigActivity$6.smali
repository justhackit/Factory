.class Lnitro/phonestats/widget/ConfigActivity$6;
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
    iput-object p1, p0, Lnitro/phonestats/widget/ConfigActivity$6;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnitro/phonestats/widget/ConfigActivity$6;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    const-class v2, Lnitro/phonestats/settings/Prefs;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action_widget_settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "extra_widget_settings_which"

    iget-object v2, p0, Lnitro/phonestats/widget/ConfigActivity$6;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    #getter for: Lnitro/phonestats/widget/ConfigActivity;->widgetType:I
    invoke-static {v2}, Lnitro/phonestats/widget/ConfigActivity;->access$1(Lnitro/phonestats/widget/ConfigActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lnitro/phonestats/widget/ConfigActivity$6;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    invoke-virtual {v1, v0}, Lnitro/phonestats/widget/ConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
