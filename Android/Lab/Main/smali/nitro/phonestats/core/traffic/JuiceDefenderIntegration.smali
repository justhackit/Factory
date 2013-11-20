.class public Lnitro/phonestats/core/traffic/JuiceDefenderIntegration;
.super Ljava/lang/Object;
.source "JuiceDefenderIntegration.java"


# static fields
.field public static final ACTION_TOGGLE_MOBILE_DATA:Ljava/lang/String; = "com.latedroid.juicedefender.action.TOGGLE_MOBILE_DATA"

.field public static final EXTRA_MOBILE_DATA:Ljava/lang/String; = "mobiledata"

.field public static final EXTRA_REQUEST_REPLY:Ljava/lang/String; = "reply"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final MOBILE_DATA_ALLOWED:Ljava/lang/String; = "allowed"

.field public static final MOBILE_DATA_DISABLED:Ljava/lang/String; = "disabled"

.field private static final TAG:Ljava/lang/String; = "DroidStats"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowMobileData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.latedroid.juicedefender.action.TOGGLE_MOBILE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tag"

    const-string v2, "DroidStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reply"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 41
    const-string v1, "mobiledata"

    const-string v2, "allowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public static disableMobileDate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.latedroid.juicedefender.action.TOGGLE_MOBILE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tag"

    const-string v2, "DroidStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reply"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 35
    const-string v1, "mobiledata"

    const-string v2, "disabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
