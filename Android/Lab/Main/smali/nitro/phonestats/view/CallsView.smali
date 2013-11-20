.class public Lnitro/phonestats/view/CallsView;
.super Lnitro/phonestats/view/StatView;
.source "CallsView.java"


# instance fields
.field private mShowEventLogBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lnitro/phonestats/view/StatView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lnitro/phonestats/view/StatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getMonthlyData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 2
    .parameter "mStatManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    const-string v1, "out_sec_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "out_sec_payed_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "out_calls_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "calls_failed_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v1, "in_sec_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Lnitro/phonestats/view/CallsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "in_sec_payed_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    const-string v1, "in_calls_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v1, "calls_missed_month"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method protected getTotalData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 2
    .parameter "mStatManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    const-string v1, "out_sec"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "out_sec_payed"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "out_calls"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "calls_failed"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "in_sec"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lnitro/phonestats/view/CallsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "in_sec_payed"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    const-string v1, "in_calls"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "calls_missed"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "out_sec_payed_week_average"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "out_sec_payed_month_average"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "out_calls_lenght_average"

    invoke-interface {p1, v1}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lnitro/phonestats/view/StatView;->onFinishInflate()V

    .line 49
    iget-object v0, p0, Lnitro/phonestats/view/CallsView;->mStatsView:Landroid/view/View;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnitro/phonestats/view/CallsView;->mShowEventLogBtn:Landroid/widget/Button;

    .line 50
    invoke-virtual {p0}, Lnitro/phonestats/view/CallsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lnitro/phonestats/view/CallsView;->mShowEventLogBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/CallsView;->mShowEventLogBtn:Landroid/widget/Button;

    new-instance v1, Lnitro/phonestats/view/CallsView$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/view/CallsView$1;-><init>(Lnitro/phonestats/view/CallsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
