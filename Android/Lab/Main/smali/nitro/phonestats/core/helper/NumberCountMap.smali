.class public Lnitro/phonestats/core/helper/NumberCountMap;
.super Lnitro/phonestats/core/helper/CountMap;
.source "NumberCountMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnitro/phonestats/core/helper/CountMap",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lnitro/phonestats/core/helper/CountMap;-><init>()V

    return-void
.end method

.method private cleanUpNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"

    .prologue
    .line 24
    return-object p1
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 12
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lnitro/phonestats/core/helper/NumberCountMap;->cleanUpNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lnitro/phonestats/core/helper/CountMap;->put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
