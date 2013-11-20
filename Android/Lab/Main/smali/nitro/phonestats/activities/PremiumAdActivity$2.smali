.class Lnitro/phonestats/activities/PremiumAdActivity$2;
.super Ljava/lang/Object;
.source "PremiumAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/PremiumAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/PremiumAdActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/PremiumAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/PremiumAdActivity$2;->this$0:Lnitro/phonestats/activities/PremiumAdActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, goToMarket:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #goToMarket:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bit.ly/droidstats-donate"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .restart local v0       #goToMarket:Landroid/content/Intent;
    iget-object v1, p0, Lnitro/phonestats/activities/PremiumAdActivity$2;->this$0:Lnitro/phonestats/activities/PremiumAdActivity;

    invoke-virtual {v1, v0}, Lnitro/phonestats/activities/PremiumAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
