.class public final enum Lnitro/phonestats/view/LimitBox$EstimationState;
.super Ljava/lang/Enum;
.source "LimitBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/LimitBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EstimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnitro/phonestats/view/LimitBox$EstimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnitro/phonestats/view/LimitBox$EstimationState;

.field public static final enum bad:Lnitro/phonestats/view/LimitBox$EstimationState;

.field public static final enum good:Lnitro/phonestats/view/LimitBox$EstimationState;

.field public static final enum none:Lnitro/phonestats/view/LimitBox$EstimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lnitro/phonestats/view/LimitBox$EstimationState;

    const-string v1, "good"

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/view/LimitBox$EstimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;

    new-instance v0, Lnitro/phonestats/view/LimitBox$EstimationState;

    const-string v1, "bad"

    invoke-direct {v0, v1, v3}, Lnitro/phonestats/view/LimitBox$EstimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;

    new-instance v0, Lnitro/phonestats/view/LimitBox$EstimationState;

    const-string v1, "none"

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/view/LimitBox$EstimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    const/4 v0, 0x3

    new-array v0, v0, [Lnitro/phonestats/view/LimitBox$EstimationState;

    sget-object v1, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;

    aput-object v1, v0, v2

    sget-object v1, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;

    aput-object v1, v0, v3

    sget-object v1, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    aput-object v1, v0, v4

    sput-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->ENUM$VALUES:[Lnitro/phonestats/view/LimitBox$EstimationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnitro/phonestats/view/LimitBox$EstimationState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnitro/phonestats/view/LimitBox$EstimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/LimitBox$EstimationState;

    return-object v0
.end method

.method public static values()[Lnitro/phonestats/view/LimitBox$EstimationState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnitro/phonestats/view/LimitBox$EstimationState;->ENUM$VALUES:[Lnitro/phonestats/view/LimitBox$EstimationState;

    array-length v1, v0

    new-array v2, v1, [Lnitro/phonestats/view/LimitBox$EstimationState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
