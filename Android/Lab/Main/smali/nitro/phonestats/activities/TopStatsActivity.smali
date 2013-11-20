.class public Lnitro/phonestats/activities/TopStatsActivity;
.super Landroid/app/Activity;
.source "TopStatsActivity.java"


# static fields
.field public static final ACTIVITY_PARAM_MONTHSHIFT:Ljava/lang/String; = "monthshift"

.field public static final ACTIVITY_PARAM_STATID:Ljava/lang/String; = "statid"

.field private static final CHART_VIEW:I = 0x1

.field private static final LIST_VIEW:I = 0x0

.field protected static final NUM_VIEWS:I = 0x2


# instance fields
.field adapter:Landroid/support/v4/view/PagerAdapter;

.field private mChartAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;

.field private mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mStat:Lnitro/phonestats/core/stat/Stat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStatChart:Landroid/webkit/WebView;

.field private mStatChartContainer:Landroid/widget/FrameLayout;

.field private mStatKey:Ljava/lang/String;

.field private mStatList:Landroid/widget/ListView;

.field private mStatManager:Lnitro/phonestats/core/IStatManager;

.field private mStatUpdateHandler:Landroid/os/Handler;

.field private mViewSwitcher:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lnitro/phonestats/activities/TopStatsActivity$1;

    invoke-direct {v0, p0}, Lnitro/phonestats/activities/TopStatsActivity$1;-><init>(Lnitro/phonestats/activities/TopStatsActivity;)V

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->adapter:Landroid/support/v4/view/PagerAdapter;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChartContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mViewSwitcher:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3(Lnitro/phonestats/activities/TopStatsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$4(Lnitro/phonestats/activities/TopStatsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->refreshViews()V

    return-void
.end method

.method static synthetic access$5(Lnitro/phonestats/activities/TopStatsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lnitro/phonestats/activities/TopStatsActivity;)Lnitro/phonestats/core/IStatManager;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    return-object v0
.end method

.method static synthetic access$7(Lnitro/phonestats/activities/TopStatsActivity;Lnitro/phonestats/core/stat/Stat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStat:Lnitro/phonestats/core/stat/Stat;

    return-void
.end method

.method static synthetic access$8(Lnitro/phonestats/activities/TopStatsActivity;)Lnitro/phonestats/view/adapters/TopStatsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    return-object v0
.end method

.method private getStat()Lnitro/phonestats/core/stat/Stat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v4, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStat:Lnitro/phonestats/core/stat/Stat;

    if-eqz v4, :cond_0

    .line 191
    iget-object v2, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStat:Lnitro/phonestats/core/stat/Stat;

    .line 218
    :goto_0
    return-object v2

    .line 192
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 194
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "statid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, statId:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "monthshift"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, monthShift:I
    if-eqz v3, :cond_2

    .line 197
    if-nez v1, :cond_1

    .line 199
    iget-object v4, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v4, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    .line 200
    .local v2, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    if-eqz v2, :cond_2

    .line 201
    iput-object v3, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatKey:Ljava/lang/String;

    .line 202
    iput-object v2, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStat:Lnitro/phonestats/core/stat/Stat;

    goto :goto_0

    .line 208
    .end local v2           #stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    :cond_1
    iget-object v4, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v4, v3, v1}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    .line 209
    .restart local v2       #stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    if-eqz v2, :cond_2

    .line 210
    iput-object v3, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatKey:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStat:Lnitro/phonestats/core/stat/Stat;

    goto :goto_0

    .line 218
    .end local v1           #monthShift:I
    .end local v2           #stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    .end local v3           #statId:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initChartView()V
    .locals 5

    .prologue
    const/16 v4, 0x30

    .line 246
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mChartAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v2, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChart:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->getChartAdapter(Landroid/webkit/WebView;)Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mChartAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;

    .line 248
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChart:Landroid/webkit/WebView;

    iget-object v2, p0, Lnitro/phonestats/activities/TopStatsActivity;->mChartAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;

    const-string v3, "ChartAdapter"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChart:Landroid/webkit/WebView;

    new-instance v2, Lnitro/phonestats/activities/TopStatsActivity$5;

    invoke-direct {v2, p0}, Lnitro/phonestats/activities/TopStatsActivity$5;-><init>(Lnitro/phonestats/activities/TopStatsActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 256
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChart:Landroid/webkit/WebView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 257
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChart:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 258
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChart:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/flot/html/piechart.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 260
    const v1, 0x7f0a00c1

    invoke-virtual {p0, v1}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 261
    .local v0, mUserOverlay:Landroid/view/ViewGroup;
    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mChartAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;

    new-instance v2, Lnitro/phonestats/activities/TopStatsActivity$6;

    invoke-direct {v2, p0, v0}, Lnitro/phonestats/activities/TopStatsActivity$6;-><init>(Lnitro/phonestats/activities/TopStatsActivity;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->setOnChartSeriesClickedListener(Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;)V

    .line 298
    .end local v0           #mUserOverlay:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lnitro/phonestats/view/adapters/TopStatsAdapter;

    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getStat()Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v1

    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getStat()Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getUnitResource()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lnitro/phonestats/view/adapters/TopStatsAdapter;-><init>(Landroid/content/Context;Lnitro/phonestats/core/helper/NumberCountMap;I)V

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    .line 239
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatList:Landroid/widget/ListView;

    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mListAdapter:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getStat()Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->setData(Lnitro/phonestats/core/helper/NumberCountMap;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->initListView()V

    .line 222
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->initChartView()V

    .line 223
    return-void
.end method

.method private refreshViews()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->initListView()V

    .line 234
    :goto_0
    return-void

    .line 227
    :pswitch_0
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->initChartView()V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/TopStatsActivity;->requestWindowFeature(I)Z

    .line 101
    invoke-virtual {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 103
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/TopStatsActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    .line 106
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 107
    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mViewSwitcher:Landroid/widget/RadioGroup;

    .line 108
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatList:Landroid/widget/ListView;

    .line 109
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChart:Landroid/webkit/WebView;

    .line 110
    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatChartContainer:Landroid/widget/FrameLayout;

    .line 112
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 113
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lnitro/phonestats/activities/TopStatsActivity$2;

    invoke-direct {v1, p0}, Lnitro/phonestats/activities/TopStatsActivity$2;-><init>(Lnitro/phonestats/activities/TopStatsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 138
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mViewSwitcher:Landroid/widget/RadioGroup;

    new-instance v1, Lnitro/phonestats/activities/TopStatsActivity$3;

    invoke-direct {v1, p0}, Lnitro/phonestats/activities/TopStatsActivity$3;-><init>(Lnitro/phonestats/activities/TopStatsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 153
    new-instance v0, Lnitro/phonestats/activities/TopStatsActivity$4;

    invoke-direct {v0, p0}, Lnitro/phonestats/activities/TopStatsActivity$4;-><init>(Lnitro/phonestats/activities/TopStatsActivity;)V

    iput-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatUpdateHandler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    invoke-virtual {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/NotificationsChecker;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/core/NotificationsChecker;->unlock()V

    .line 186
    iget-object v0, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    iget-object v1, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatUpdateHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->removeHandler(Landroid/os/Handler;)V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->getStat()Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    .line 169
    .local v2, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    .line 170
    const v3, 0x7f0a0015

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, header:Landroid/widget/TextView;
    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getNameResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 173
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/TopStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/view/quickaction/QuickInfo;

    .line 174
    .local v1, quickInfo:Lnitro/phonestats/view/quickaction/QuickInfo;
    invoke-virtual {v2, p0}, Lnitro/phonestats/core/stat/Stat;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnitro/phonestats/view/quickaction/QuickInfo;->setText(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    iget-object v4, p0, Lnitro/phonestats/activities/TopStatsActivity;->mStatUpdateHandler:Landroid/os/Handler;

    invoke-interface {v3, v4}, Lnitro/phonestats/core/IStatManager;->addHandler(Landroid/os/Handler;)V

    .line 177
    invoke-direct {p0}, Lnitro/phonestats/activities/TopStatsActivity;->initViews()V

    .line 179
    .end local v0           #header:Landroid/widget/TextView;
    .end local v1           #quickInfo:Lnitro/phonestats/view/quickaction/QuickInfo;
    :cond_0
    return-void
.end method
