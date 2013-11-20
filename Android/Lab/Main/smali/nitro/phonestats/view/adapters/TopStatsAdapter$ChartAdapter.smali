.class public Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;
.super Ljava/lang/Object;
.source "TopStatsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/adapters/TopStatsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChartAdapter"
.end annotation


# instance fields
.field private mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

.field private mStatChart:Landroid/webkit/WebView;

.field private maxEntries:I

.field final synthetic this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;


# direct methods
.method public constructor <init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Landroid/webkit/WebView;)V
    .locals 2
    .parameter
    .parameter "webView"

    .prologue
    .line 308
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x5

    iput v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->maxEntries:I

    .line 309
    iput-object p2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mStatChart:Landroid/webkit/WebView;

    .line 310
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mStatChart:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    .line 312
    return-void
.end method


# virtual methods
.method public chartSeriesClicked(ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 6
    .parameter "position"
    .parameter "name"
    .parameter "value"
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 319
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->maxEntries:I

    if-ge p1, v0, :cond_1

    .line 320
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;->onChartSeriesClicked(ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    invoke-interface {v0}, Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;->onChartSeriesUnfocused()V

    goto :goto_0
.end method

.method public chartSeriesUnfocused()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    invoke-interface {v0}, Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;->onChartSeriesUnfocused()V

    .line 329
    :cond_0
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 13

    .prologue
    .line 332
    const-wide/16 v3, 0x0

    .line 333
    .local v3, rest:J
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 334
    .local v0, data:Lorg/json/JSONArray;
    iget-object v8, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v9, v8, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    monitor-enter v9

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, index:I
    :try_start_0
    iget-object v8, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v8, v8, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mData:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 334
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_0

    .line 356
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 358
    .local v5, restSerie:Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "position"

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    const-string v8, "data"

    invoke-virtual {v5, v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 360
    const-string v8, "label"

    const-string v9, "Rest"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v8, "color"

    invoke-static {}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->access$0()[Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->maxEntries:I

    aget-object v9, v9, v10

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    :goto_1
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 368
    .end local v5           #restSerie:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 336
    :cond_1
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 337
    .local v7, tupel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    iget v8, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->maxEntries:I

    if-ge v2, v8, :cond_2

    .line 338
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    .local v6, serie:Lorg/json/JSONObject;
    :try_start_3
    const-string v8, "position"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v8, "data"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v8, "label"

    iget-object v11, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v11, v11, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mTmpData:Ljava/util/HashMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v8, "color"

    invoke-static {}, Lnitro/phonestats/view/adapters/TopStatsAdapter;->access$0()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 348
    :goto_2
    :try_start_4
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 352
    .end local v6           #serie:Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .restart local v6       #serie:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 334
    .end local v1           #e:Lorg/json/JSONException;
    .end local v6           #serie:Lorg/json/JSONObject;
    .end local v7           #tupel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 350
    .restart local v7       #tupel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    :try_start_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v11

    add-long/2addr v3, v11

    goto :goto_3

    .line 363
    .end local v7           #tupel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5       #restSerie:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 364
    .restart local v1       #e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public setOnChartSeriesClickedListener(Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;)V
    .locals 0
    .parameter "onChartSeriesClickedListener"

    .prologue
    .line 315
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$ChartAdapter;->mOnChartSeriesClickedListener:Lnitro/phonestats/view/adapters/TopStatsAdapter$OnChartSeriesClickedListener;

    .line 316
    return-void
.end method
