.class public final enum Lnitro/phonestats/core/stat/Stat$ViewType;
.super Ljava/lang/Enum;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/stat/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/core/stat/Stat$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALLS:Lnitro/phonestats/core/stat/Stat$ViewType;

.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/core/stat/Stat$ViewType;

.field public static final enum OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

.field public static final enum SMS:Lnitro/phonestats/core/stat/Stat$ViewType;

.field public static final enum TRAFFIC:Lnitro/phonestats/core/stat/Stat$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lnitro/phonestats/core/stat/Stat$ViewType;

    const-string v1, "OVERVIEW"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/stat/Stat$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    new-instance v0, Lnitro/phonestats/core/stat/Stat$ViewType;

    const-string v1, "CALLS"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/core/stat/Stat$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/stat/Stat$ViewType;->CALLS:Lnitro/phonestats/core/stat/Stat$ViewType;

    new-instance v0, Lnitro/phonestats/core/stat/Stat$ViewType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/core/stat/Stat$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/stat/Stat$ViewType;->SMS:Lnitro/phonestats/core/stat/Stat$ViewType;

    new-instance v0, Lnitro/phonestats/core/stat/Stat$ViewType;

    const-string v1, "TRAFFIC"

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/stat/Stat$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/stat/Stat$ViewType;->TRAFFIC:Lnitro/phonestats/core/stat/Stat$ViewType;

    const/4 v0, 0x4

    new-array v0, v0, [Lnitro/phonestats/core/stat/Stat$ViewType;

    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->CALLS:Lnitro/phonestats/core/stat/Stat$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->SMS:Lnitro/phonestats/core/stat/Stat$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->TRAFFIC:Lnitro/phonestats/core/stat/Stat$ViewType;

    aput-object v1, v0, v5

    sput-object v0, Lnitro/phonestats/core/stat/Stat$ViewType;->ENUM$VALUES:[Lnitro/phonestats/core/stat/Stat$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat$ViewType;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/core/stat/Stat$ViewType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/core/stat/Stat$ViewType;->ENUM$VALUES:[Lnitro/phonestats/core/stat/Stat$ViewType;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
