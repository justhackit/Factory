.class public Lnitro/phonestats/core/PhoneEvent$SmsEvent;
.super Lnitro/phonestats/core/PhoneEvent;
.source "PhoneEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;
    }
.end annotation


# static fields
.field private static SMS_SPLIT_MSG_LENGTH:I


# instance fields
.field public action:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

.field public characters:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->SMS_SPLIT_MSG_LENGTH:I

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "messageSplitLength"

    .prologue
    .line 53
    invoke-direct {p0}, Lnitro/phonestats/core/PhoneEvent;-><init>()V

    .line 54
    sput p1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->SMS_SPLIT_MSG_LENGTH:I

    .line 55
    return-void
.end method


# virtual methods
.method public getBilledMessages()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    iget-boolean v2, p0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->isBilled:Z

    if-nez v2, :cond_0

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_0
    sget v2, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->SMS_SPLIT_MSG_LENGTH:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 78
    :cond_1
    iget v2, p0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->characters:I

    sget v3, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->SMS_SPLIT_MSG_LENGTH:I

    div-int/2addr v2, v3

    iget v3, p0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->characters:I

    sget v4, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->SMS_SPLIT_MSG_LENGTH:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
