.class final enum Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;
.super Ljava/lang/Enum;
.source "HistoryStatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/HistoryStatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CurrentDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

.field public static final enum LEFT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

.field public static final enum RIGHT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->LEFT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    new-instance v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->RIGHT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    sget-object v1, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->LEFT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->RIGHT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    aput-object v1, v0, v3

    sput-object v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->ENUM$VALUES:[Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->ENUM$VALUES:[Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
