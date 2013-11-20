.class public Lnitro/phonestats/view/adapters/TopStatsAdapter;
.super Ljava/lang/Object;
.source "TopStatsAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;,
        Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[Ljava/lang/String;


# instance fields
.field public NUMBER_ENTRIES:I

.field density:F

.field mContext:Landroid/content/Context;

.field mDBThread:Ljava/util/concurrent/ExecutorService;

.field mData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field mTmpData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mUnitResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#cbff48"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#a2cc3a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#7b9a2b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#5a7120"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#3d4d16"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#1c230a"

    aput-object v2, v0, v1

    sput-object v0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->COLORS:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/helper/NumberCountMap;I)V
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "unitResource"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->NUMBER_ENTRIES:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    .line 63
    invoke-static {p1}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->getNumberEntries(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->NUMBER_ENTRIES:I

    .line 65
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p2}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->sortByValue(Lnitro/phonestats/core/helper/CountMap;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    .line 67
    iput p3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mUnitResource:I

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mDBThread:Ljava/util/concurrent/ExecutorService;

    .line 69
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->density:F

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mObservers:Ljava/util/List;

    .line 73
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->COLORS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getNumberEntries(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .parameter "context"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyObservers()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    return-void

    .line 84
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 85
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method private static sortByValue(Lnitro/phonestats/core/helper/CountMap;)Ljava/util/LinkedList;
    .locals 2
    .parameter "numberMap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/helper/CountMap;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lnitro/phonestats/core/helper/CountMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 273
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v1, Lnitro/phonestats/view/adapters/TopStatsAdapter$5;

    invoke-direct {v1}, Lnitro/phonestats/view/adapters/TopStatsAdapter$5;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public getChartAdapter(Landroid/webkit/WebView;)Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;
    .locals 1
    .parameter "webView"

    .prologue
    .line 300
    new-instance v0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;

    invoke-direct {v0, p0, p1}, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;-><init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Landroid/webkit/WebView;)V

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->NUMBER_ENTRIES:I

    if-lt v0, v2, :cond_0

    .line 92
    iget v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->NUMBER_ENTRIES:I

    monitor-exit v1

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 100
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 120
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030026

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 124
    .local v8, view:Landroid/view/View;
    iget-object v10, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    monitor-enter v10

    .line 125
    :try_start_0
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v9, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 124
    .local v6, phone:Ljava/lang/String;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const v9, 0x7f0a00c5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 128
    .local v5, nameText:Landroid/widget/TextView;
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 129
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    const v9, 0x7f0a00c6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 163
    .local v4, minText:Landroid/widget/TextView;
    iget-object v10, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    monitor-enter v10

    .line 164
    :try_start_1
    iget v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mUnitResource:I

    packed-switch v9, :pswitch_data_0

    .line 174
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v9, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, value:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    iget v12, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mUnitResource:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    const v9, 0x7f0a00c4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 180
    .local v1, contactImg:Landroid/widget/ImageView;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 181
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 182
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "img"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 183
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "img"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    :goto_2
    const-string v9, "tel"

    const/4 v10, 0x0

    invoke-static {v9, v6, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 210
    .local v2, createUri:Landroid/net/Uri;
    :try_start_2
    invoke-static {}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->checkAvailable()V

    .line 211
    new-instance v9, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;

    invoke-direct {v9, p0, v6, v2}, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;-><init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/VerifyError; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    :goto_3
    return-object v8

    .line 124
    .end local v1           #contactImg:Landroid/widget/ImageView;
    .end local v2           #createUri:Landroid/net/Uri;
    .end local v4           #minText:Landroid/widget/TextView;
    .end local v5           #nameText:Landroid/widget/TextView;
    .end local v6           #phone:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 131
    .restart local v5       #nameText:Landroid/widget/TextView;
    .restart local v6       #phone:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mDBThread:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;

    invoke-direct {v10, p0, v6, v5}, Lnitro/phonestats/view/adapters/TopStatsAdapter$1;-><init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 169
    .restart local v4       #minText:Landroid/widget/TextView;
    :pswitch_0
    :try_start_4
    new-instance v11, Lnitro/phonestats/core/helper/formatter/CallLengthValue;

    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v9, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v13, v9}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;-><init>(JLandroid/content/Context;)V

    const/4 v9, 0x1

    .line 170
    iget-object v12, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lnitro/phonestats/settings/core/Settings;->useHoursDisplay(Landroid/content/Context;)Z

    move-result v12

    const/4 v13, 0x0

    .line 169
    invoke-virtual {v11, v9, v12, v13}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->getTextRepresentation(ZZZ)Ljava/lang/String;

    move-result-object v7

    .line 171
    .restart local v7       #value:Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 163
    .end local v7           #value:Ljava/lang/String;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 185
    .restart local v1       #contactImg:Landroid/widget/ImageView;
    .restart local v7       #value:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 186
    const v10, 0x7f020086

    const/4 v11, 0x0

    .line 185
    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 186
    iget v10, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->density:F

    const/16 v11, 0x2d

    invoke-static {v10, v11}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v10

    .line 187
    iget v11, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->density:F

    const/16 v12, 0x2d

    invoke-static {v11, v12}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v11

    const/4 v12, 0x0

    .line 185
    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object v9, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mDBThread:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;

    invoke-direct {v10, p0, v6, v1}, Lnitro/phonestats/view/adapters/TopStatsAdapter$2;-><init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_2

    .line 224
    .restart local v2       #createUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 226
    .local v3, e:Ljava/lang/VerifyError;
    new-instance v9, Lnitro/phonestats/view/adapters/TopStatsAdapter$4;

    invoke-direct {v9, p0, v2}, Lnitro/phonestats/view/adapters/TopStatsAdapter$4;-><init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Landroid/net/Uri;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 164
    :pswitch_data_0
    .packed-switch 0x7f07010d
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 258
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v1

    .line 261
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setData(Lnitro/phonestats/core/helper/NumberCountMap;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 76
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 78
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-static {p1}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->sortByValue(Lnitro/phonestats/core/helper/CountMap;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->notifyObservers()V

    .line 81
    return-void

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 265
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 265
    monitor-exit v1

    .line 268
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
