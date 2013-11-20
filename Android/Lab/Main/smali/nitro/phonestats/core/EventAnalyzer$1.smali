.class Lnitro/phonestats/core/EventAnalyzer$1;
.super Ljava/lang/Object;
.source "EventAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/core/EventAnalyzer;->sortEventList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnitro/phonestats/core/PhoneEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/core/EventAnalyzer;


# direct methods
.method constructor <init>(Lnitro/phonestats/core/EventAnalyzer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/core/EventAnalyzer$1;->this$0:Lnitro/phonestats/core/EventAnalyzer;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnitro/phonestats/core/PhoneEvent;

    check-cast p2, Lnitro/phonestats/core/PhoneEvent;

    invoke-virtual {p0, p1, p2}, Lnitro/phonestats/core/EventAnalyzer$1;->compare(Lnitro/phonestats/core/PhoneEvent;Lnitro/phonestats/core/PhoneEvent;)I

    move-result v0

    return v0
.end method

.method public compare(Lnitro/phonestats/core/PhoneEvent;Lnitro/phonestats/core/PhoneEvent;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 118
    iget-object v0, p2, Lnitro/phonestats/core/PhoneEvent;->datetime:Ljava/util/Date;

    iget-object v1, p1, Lnitro/phonestats/core/PhoneEvent;->datetime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method
