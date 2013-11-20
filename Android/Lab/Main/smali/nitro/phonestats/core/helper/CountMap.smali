.class public Lnitro/phonestats/core/helper/CountMap;
.super Ljava/util/HashMap;
.source "CountMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, this:Lnitro/phonestats/core/helper/CountMap;,"Lnitro/phonestats/core/helper/CountMap<TK;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, this:Lnitro/phonestats/core/helper/CountMap;,"Lnitro/phonestats/core/helper/CountMap<TK;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, p1}, Lnitro/phonestats/core/helper/CountMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 12
    .local v0, value2:Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 13
    move-object v0, p2

    .line 16
    :goto_0
    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    return-object v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lnitro/phonestats/core/helper/CountMap;->put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
