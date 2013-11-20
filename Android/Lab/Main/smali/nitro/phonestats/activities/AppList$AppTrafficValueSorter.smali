.class public Lnitro/phonestats/activities/AppList$AppTrafficValueSorter;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/activities/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTrafficValueSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private transform(J)I
    .locals 3
    .parameter "l"

    .prologue
    const-wide/16 v1, 0x0

    .line 287
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    .line 289
    :cond_0
    cmp-long v0, p1, v1

    if-gez v0, :cond_1

    .line 290
    const/4 v0, -0x1

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    check-cast p2, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    invoke-virtual {p0, p1, p2}, Lnitro/phonestats/activities/AppList$AppTrafficValueSorter;->compare(Lnitro/phonestats/activities/AppList$AppTrafficValue;Lnitro/phonestats/activities/AppList$AppTrafficValue;)I

    move-result v0

    return v0
.end method

.method public compare(Lnitro/phonestats/activities/AppList$AppTrafficValue;Lnitro/phonestats/activities/AppList$AppTrafficValue;)I
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 283
    iget-wide v0, p2, Lnitro/phonestats/activities/AppList$AppTrafficValue;->incomingBytes:J

    iget-wide v2, p2, Lnitro/phonestats/activities/AppList$AppTrafficValue;->outgoingBytes:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->incomingBytes:J

    iget-wide v4, p1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->outgoingBytes:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lnitro/phonestats/activities/AppList$AppTrafficValueSorter;->transform(J)I

    move-result v0

    return v0
.end method
