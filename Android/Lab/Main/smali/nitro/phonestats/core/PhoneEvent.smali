.class public Lnitro/phonestats/core/PhoneEvent;
.super Ljava/lang/Object;
.source "PhoneEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/PhoneEvent$CallEvent;,
        Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    }
.end annotation


# instance fields
.field public datetime:Ljava/util/Date;

.field public isBilled:Z

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
