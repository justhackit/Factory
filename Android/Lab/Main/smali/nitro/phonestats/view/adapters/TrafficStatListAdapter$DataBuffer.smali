.class Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;
.super Ljava/lang/Object;
.source "TrafficStatListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/adapters/TrafficStatListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataBuffer"
.end annotation


# instance fields
.field downValue:Ljava/lang/String;

.field final synthetic this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

.field totalValue:Ljava/lang/String;

.field upValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->this$0:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->totalValue:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->upValue:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->downValue:Ljava/lang/String;

    return-void
.end method
