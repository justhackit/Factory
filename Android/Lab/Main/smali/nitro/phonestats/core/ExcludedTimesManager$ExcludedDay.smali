.class public final enum Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;
.super Ljava/lang/Enum;
.source "ExcludedTimesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/ExcludedTimesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExcludedDay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum FRIDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum MONDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum SATURDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum SUNDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum THURSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum TUESDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum WEDNSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum WEEKEND:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public static final enum WORKINGDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "MONDAY"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->MONDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 80
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "TUESDAY"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->TUESDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 81
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "WEDNSDAY"

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEDNSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 82
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "THURSDAY"

    invoke-direct {v0, v1, v6}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->THURSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 83
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "FRIDAY"

    invoke-direct {v0, v1, v7}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->FRIDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 84
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "SATURDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SATURDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 85
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "SUNDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SUNDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 86
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "WORKINGDAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WORKINGDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 87
    new-instance v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    const-string v1, "WEEKEND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEEKEND:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 77
    const/16 v0, 0x9

    new-array v0, v0, [Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->MONDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->TUESDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v1, v0, v4

    sget-object v1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEDNSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v1, v0, v5

    sget-object v1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->THURSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v1, v0, v6

    sget-object v1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->FRIDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SATURDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SUNDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WORKINGDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEEKEND:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    aput-object v2, v0, v1

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->ENUM$VALUES:[Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static dayStringToExcludeDay(Ljava/lang/String;)Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;
    .locals 1
    .parameter "dayString"

    .prologue
    .line 95
    const-string v0, "MONDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->MONDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 113
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string v0, "TUESDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->TUESDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "WEDNSDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEDNSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "THURSDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->THURSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "FRIDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->FRIDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "SATURDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SATURDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 107
    :cond_5
    const-string v0, "SUNDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SUNDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 109
    :cond_6
    const-string v0, "WORKINGDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WORKINGDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 111
    :cond_7
    const-string v0, "WEEKEND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEEKEND:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    goto :goto_0

    .line 113
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ordinalToEnum(I)Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;
    .locals 1
    .parameter "c"

    .prologue
    .line 90
    invoke-static {}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->values()[Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->ENUM$VALUES:[Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
