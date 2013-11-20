.class public abstract Lnitro/phonestats/widget/WidgetProviderBase;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProviderBase.java"


# static fields
.field public static final APPWIDGET_MANUEL_UPDATE:Ljava/lang/String; = "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

.field static final CUPCAKE:I = 0x3

.field static final FROYO:I = 0x8

.field static osVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 22
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnitro/phonestats/widget/WidgetProviderBase;->osVersion:I

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract getService()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "APPWIDGET_MANUEL_UPDATE"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnitro/phonestats/widget/WidgetProviderBase;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProviderBase;->getService()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    return-void
.end method
