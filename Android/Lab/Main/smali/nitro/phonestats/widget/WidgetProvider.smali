.class public Lnitro/phonestats/widget/WidgetProvider;
.super Lnitro/phonestats/widget/WidgetProviderBase;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;,
        Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;
    }
.end annotation


# static fields
.field private static oneslot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lnitro/phonestats/widget/WidgetProvider;->oneslot:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnitro/phonestats/widget/WidgetProviderBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 152
    sget-boolean v0, Lnitro/phonestats/widget/WidgetProvider;->oneslot:Z

    if-eqz v0, :cond_0

    const-class v0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 160
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->use1SlotWidget(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lnitro/phonestats/widget/WidgetProvider;->oneslot:Z

    .line 161
    invoke-super {p0, p1, p2, p3}, Lnitro/phonestats/widget/WidgetProviderBase;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 162
    return-void
.end method
