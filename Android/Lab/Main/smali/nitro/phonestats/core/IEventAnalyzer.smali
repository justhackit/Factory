.class public interface abstract Lnitro/phonestats/core/IEventAnalyzer;
.super Ljava/lang/Object;
.source "IEventAnalyzer.java"


# virtual methods
.method public abstract analyze()V
.end method

.method public abstract analyze(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method

.method public abstract exportEvents(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getEventlist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/PhoneEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeSeries(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
