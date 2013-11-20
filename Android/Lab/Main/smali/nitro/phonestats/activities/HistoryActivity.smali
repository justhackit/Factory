.class public Lnitro/phonestats/activities/HistoryActivity;
.super Landroid/app/Activity;
.source "HistoryActivity.java"


# instance fields
.field flipper:Landroid/support/v4/view/ViewPager;

.field private mStatManager:Lnitro/phonestats/core/IStatManager;

.field monthName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/HistoryActivity;)Lnitro/phonestats/core/IStatManager;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lnitro/phonestats/activities/HistoryActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-virtual {p0}, Lnitro/phonestats/activities/HistoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onInit()V
    .locals 8

    .prologue
    .line 63
    iget-object v6, p0, Lnitro/phonestats/activities/HistoryActivity;->flipper:Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 65
    iget-object v6, p0, Lnitro/phonestats/activities/HistoryActivity;->flipper:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lnitro/phonestats/activities/HistoryActivity$1;

    invoke-direct {v7, p0}, Lnitro/phonestats/activities/HistoryActivity$1;-><init>(Lnitro/phonestats/activities/HistoryActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object v6, p0, Lnitro/phonestats/activities/HistoryActivity;->monthName:Landroid/widget/TextView;

    const-string v7, "Month: -1"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string v6, "22/9/2011"

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 110
    .local v0, d:Ljava/util/Date;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v4, prevStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    invoke-virtual {p0}, Lnitro/phonestats/activities/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6}, Lnitro/phonestats/core/StatFactory;->createMainStats(Ljava/util/Map;Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Lnitro/phonestats/activities/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v6

    iput-object v6, p0, Lnitro/phonestats/activities/HistoryActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    .line 118
    iget-object v6, p0, Lnitro/phonestats/activities/HistoryActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lnitro/phonestats/core/IStatManager;->createHistoricalStats(I)V

    .line 120
    new-instance v5, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 122
    .local v5, worksQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 126
    .local v3, executor:Ljava/util/concurrent/ExecutorService;
    iget-object v6, p0, Lnitro/phonestats/activities/HistoryActivity;->flipper:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lnitro/phonestats/activities/HistoryActivity$2;

    invoke-direct {v7, p0, v3}, Lnitro/phonestats/activities/HistoryActivity$2;-><init>(Lnitro/phonestats/activities/HistoryActivity;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0           #d:Ljava/util/Date;
    .end local v3           #executor:Ljava/util/concurrent/ExecutorService;
    .end local v4           #prevStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    .end local v5           #worksQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v2

    .line 170
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
