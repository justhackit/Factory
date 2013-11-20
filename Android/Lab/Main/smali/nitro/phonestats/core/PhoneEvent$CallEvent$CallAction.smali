.class public final enum Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;
.super Ljava/lang/Enum;
.source "PhoneEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/PhoneEvent$CallEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

.field public static final enum FAILED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

.field public static final enum INCOMING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

.field public static final enum MISSED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

.field public static final enum OUTGOING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    const-string v1, "INCOMING_CALL"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->INCOMING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    new-instance v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    const-string v1, "OUTGOING_CALL"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->OUTGOING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    new-instance v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    const-string v1, "FAILED_CALL"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->FAILED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    new-instance v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    const-string v1, "MISSED_CALL"

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->MISSED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->INCOMING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->OUTGOING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->FAILED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    aput-object v1, v0, v4

    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->MISSED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    aput-object v1, v0, v5

    sput-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ENUM$VALUES:[Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ENUM$VALUES:[Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 30
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->INCOMING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Incoming Call"

    .line 38
    :goto_0
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->OUTGOING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "Outgoing Call"

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->FAILED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    const-string v0, "Failed Call"

    goto :goto_0

    .line 36
    :cond_2
    sget-object v0, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->MISSED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    const-string v0, "Missed Call"

    goto :goto_0

    .line 38
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
