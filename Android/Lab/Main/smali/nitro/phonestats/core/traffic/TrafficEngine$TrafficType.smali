.class public final enum Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;
.super Ljava/lang/Enum;
.source "TrafficEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/traffic/TrafficEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrafficType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

.field public static final enum MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

.field public static final enum MOBILE_API:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

.field public static final enum WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    .line 47
    new-instance v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    .line 48
    new-instance v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    const-string v1, "MOBILE_API"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE_API:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE_API:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    aput-object v1, v0, v4

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->ENUM$VALUES:[Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->ENUM$VALUES:[Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
