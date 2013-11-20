.class Lnitro/phonestats/widget/ConfigActivity$2;
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
    iput-object p1, p0, Lnitro/phonestats/widget/ConfigActivity$2;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, goToMarket:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #goToMarket:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search?q=pname:nitro.phonestats.key"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .restart local v0       #goToMarket:Landroid/content/Intent;
    iget-object v1, p0, Lnitro/phonestats/widget/ConfigActivity$2;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    invoke-virtual {v1, v0}, Lnitro/phonestats/widget/ConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    iget-object v1, p0, Lnitro/phonestats/widget/ConfigActivity$2;->this$0:Lnitro/phonestats/widget/ConfigActivity;

    invoke-virtual {v1}, Lnitro/phonestats/widget/ConfigActivity;->finish()V

    .line 156
    return-void
.end method
