.class public final enum Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
.super Ljava/lang/Enum;
.source "PremiumActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/helper/PremiumActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PremiumState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

.field public static final enum FREE:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

.field public static final enum INVALID:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

.field public static final enum PREMIUM:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

.field public static final enum PREMIUM_VERIFIED:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->FREE:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    new-instance v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    const-string v1, "PREMIUM"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->PREMIUM:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    new-instance v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    const-string v1, "PREMIUM_VERIFIED"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->PREMIUM_VERIFIED:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    new-instance v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->INVALID:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    sget-object v1, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->FREE:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->PREMIUM:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->PREMIUM_VERIFIED:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    aput-object v1, v0, v4

    sget-object v1, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->INVALID:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    aput-object v1, v0, v5

    sput-object v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->ENUM$VALUES:[Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->ENUM$VALUES:[Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
