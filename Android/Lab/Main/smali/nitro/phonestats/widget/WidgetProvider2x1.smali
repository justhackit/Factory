.class public Lnitro/phonestats/widget/WidgetProvider2x1;
.super Lnitro/phonestats/widget/WidgetProviderBase;
.source "WidgetProvider2x1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
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
    .line 17
    const-class v0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;

    return-object v0
.end method
