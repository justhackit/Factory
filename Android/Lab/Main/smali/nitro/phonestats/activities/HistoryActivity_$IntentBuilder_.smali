.class public Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;
.super Ljava/lang/Object;
.source "HistoryActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/activities/HistoryActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder_"
.end annotation


# instance fields
.field private context_:Landroid/content/Context;

.field private final intent_:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnitro/phonestats/activities/HistoryActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    .line 81
    return-void
.end method


# virtual methods
.method public flags(I)Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;
    .locals 1
    .parameter "flags"

    .prologue
    .line 88
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    iget-object v1, p0, Lnitro/phonestats/activities/HistoryActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
