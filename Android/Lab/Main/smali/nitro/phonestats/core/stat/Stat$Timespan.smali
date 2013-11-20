.class public final enum Lnitro/phonestats/core/stat/Stat$Timespan;
.super Ljava/lang/Enum;
.source "Stat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/stat/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Timespan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/core/stat/Stat$Timespan;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/core/stat/Stat$Timespan;

.field public static final enum MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

.field public static final enum TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

.field public static final enum WEEKLY:Lnitro/phonestats/core/stat/Stat$Timespan;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lnitro/phonestats/core/stat/Stat$Timespan;

    const-string v1, "MONTHLY"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/stat/Stat$Timespan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    new-instance v0, Lnitro/phonestats/core/stat/Stat$Timespan;

    const-string v1, "TOTAL"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/core/stat/Stat$Timespan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    new-instance v0, Lnitro/phonestats/core/stat/Stat$Timespan;

    const-string v1, "WEEKLY"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/core/stat/Stat$Timespan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/stat/Stat$Timespan;->WEEKLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    const/4 v0, 0x3

    new-array v0, v0, [Lnitro/phonestats/core/stat/Stat$Timespan;

    sget-object v1, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/core/stat/Stat$Timespan;->WEEKLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    aput-object v1, v0, v4

    sput-object v0, Lnitro/phonestats/core/stat/Stat$Timespan;->ENUM$VALUES:[Lnitro/phonestats/core/stat/Stat$Timespan;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat$Timespan;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/core/stat/Stat$Timespan;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat$Timespan;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/core/stat/Stat$Timespan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/core/stat/Stat$Timespan;->ENUM$VALUES:[Lnitro/phonestats/core/stat/Stat$Timespan;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/core/stat/Stat$Timespan;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
