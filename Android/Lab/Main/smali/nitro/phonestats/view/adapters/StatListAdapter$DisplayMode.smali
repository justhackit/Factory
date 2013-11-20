.class public final enum Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
.super Ljava/lang/Enum;
.source "StatListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/adapters/StatListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field public static final enum FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field public static final enum SIMPLE:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    new-instance v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ALL:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    new-instance v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->SIMPLE:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ALL:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->SIMPLE:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ENUM$VALUES:[Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ENUM$VALUES:[Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
