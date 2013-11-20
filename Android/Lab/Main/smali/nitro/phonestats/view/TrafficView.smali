.class public Lnitro/phonestats/view/TrafficView;
.super Landroid/widget/ViewFlipper;
.source "TrafficView.java"


# instance fields
.field private mShowDataPerAppBtn:Landroid/widget/Button;

.field private mStatList:Landroid/widget/ListView;

.field private mStatManager:Lnitro/phonestats/core/IStatManager;

.field protected mStatsView:Landroid/view/View;

.field private mTrafficStatsAdapter:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

.field protected trafficUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/view/TrafficView;->trafficUpdating:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/view/TrafficView;->trafficUpdating:Z

    .line 60
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/TrafficView;)Lnitro/phonestats/core/IStatManager;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/view/TrafficView;Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lnitro/phonestats/view/TrafficView;->getWifiData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lnitro/phonestats/view/TrafficView;)Lnitro/phonestats/view/adapters/TrafficStatListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView;->mTrafficStatsAdapter:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lnitro/phonestats/view/TrafficView;Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lnitro/phonestats/view/TrafficView;->getMobileData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lnitro/phonestats/view/TrafficView;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView;->mStatList:Landroid/widget/ListView;

    return-object v0
.end method

.method private getMobileData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 3
    .parameter "statManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/TrafficStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/TrafficStat;>;"
    iget-object v1, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "DAILY_MOBILE"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/TrafficStat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "MONTHLY_MOBILE"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/TrafficStat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "ALLTIME_MOBILE"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/TrafficStat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-object v0
.end method

.method private getWifiData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 3
    .parameter "statManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/TrafficStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/TrafficStat;>;"
    iget-object v1, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "DAILY_WIFI"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/TrafficStat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "MONTHLY_WIFI"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/TrafficStat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "ALLTIME_WIFI"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/TrafficStat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-object v0
.end method

.method private initStats(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/TrafficStat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/TrafficStat;>;"
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView;->mStatList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 156
    new-instance v0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    invoke-virtual {p0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-direct {v0, v1, p1, v2}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lnitro/phonestats/core/IStatManager;)V

    iput-object v0, p0, Lnitro/phonestats/view/TrafficView;->mTrafficStatsAdapter:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    .line 157
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView;->mStatList:Landroid/widget/ListView;

    iget-object v1, p0, Lnitro/phonestats/view/TrafficView;->mTrafficStatsAdapter:Lnitro/phonestats/view/adapters/TrafficStatListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView;->mStatList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 161
    return-void
.end method

.method private isFroyo()Z
    .locals 2

    .prologue
    .line 151
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    const v4, 0x7f0a0057

    .line 70
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onFinishInflate()V

    .line 71
    invoke-virtual {p0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    .line 73
    invoke-virtual {p0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03000c

    invoke-static {v2, v3, p0}, Lnitro/phonestats/view/TrafficView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    .line 75
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnitro/phonestats/view/TrafficView;->mShowDataPerAppBtn:Landroid/widget/Button;

    .line 76
    invoke-direct {p0}, Lnitro/phonestats/view/TrafficView;->isFroyo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mShowDataPerAppBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    :cond_0
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mShowDataPerAppBtn:Landroid/widget/Button;

    new-instance v3, Lnitro/phonestats/view/TrafficView$1;

    invoke-direct {v3, p0}, Lnitro/phonestats/view/TrafficView$1;-><init>(Lnitro/phonestats/view/TrafficView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatList:Landroid/widget/ListView;

    .line 86
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 87
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-direct {p0, v2}, Lnitro/phonestats/view/TrafficView;->getMobileData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnitro/phonestats/view/TrafficView;->initStats(Ljava/util/List;)V

    .line 89
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 90
    .local v0, mobileBtn:Landroid/widget/RadioButton;
    iget-object v2, p0, Lnitro/phonestats/view/TrafficView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a0058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 92
    .local v1, wifiBtn:Landroid/widget/RadioButton;
    new-instance v2, Lnitro/phonestats/view/TrafficView$2;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/TrafficView$2;-><init>(Lnitro/phonestats/view/TrafficView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    new-instance v2, Lnitro/phonestats/view/TrafficView$3;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/TrafficView$3;-><init>(Lnitro/phonestats/view/TrafficView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "animation start"

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView;->mStatList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    return-void
.end method

.method public startTrafficRefresher()V
    .locals 2

    .prologue
    .line 184
    iget-boolean v1, p0, Lnitro/phonestats/view/TrafficView;->trafficUpdating:Z

    if-eqz v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnitro/phonestats/view/TrafficView;->trafficUpdating:Z

    .line 189
    new-instance v0, Lnitro/phonestats/view/TrafficView$4;

    invoke-direct {v0, p0}, Lnitro/phonestats/view/TrafficView$4;-><init>(Lnitro/phonestats/view/TrafficView;)V

    .line 218
    .local v0, refreshAction:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopTrafficRefresher()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/view/TrafficView;->trafficUpdating:Z

    .line 225
    return-void
.end method
