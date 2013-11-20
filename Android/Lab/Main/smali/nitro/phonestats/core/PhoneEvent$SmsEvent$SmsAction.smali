.class public final enum Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;
.super Ljava/lang/Enum;
.source "PhoneEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/PhoneEvent$SmsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmsAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

.field public static final enum INCOMING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

.field public static final enum OUTGOING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    const-string v1, "INCOMING_SMS"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->INCOMING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    new-instance v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    const-string v1, "OUTGOING_SMS"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->OUTGOING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    sget-object v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->INCOMING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->OUTGOING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    aput-object v1, v0, v3

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->ENUM$VALUES:[Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->ENUM$VALUES:[Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 63
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->INCOMING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "Incoming SMS"

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->OUTGOING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "Outgoing SMS"

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
