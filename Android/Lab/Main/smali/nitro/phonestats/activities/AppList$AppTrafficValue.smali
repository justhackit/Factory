.class public Lnitro/phonestats/activities/AppList$AppTrafficValue;
.super Ljava/lang/Object;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/activities/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTrafficValue"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public incomingBytes:J

.field public outgoingBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
