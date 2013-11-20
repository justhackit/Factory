.class Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;
.super Landroid/widget/Filter;
.source "LogViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/view/adapters/LogViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;


# direct methods
.method private constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .parameter "prefix"

    .prologue
    .line 432
    new-instance v9, Landroid/widget/Filter$FilterResults;

    invoke-direct {v9}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 434
    .local v9, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mOriginalEvents:Ljava/util/List;
    invoke-static {v13}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$0(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_0

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v13}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$1(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 436
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    move-object/from16 v16, v0

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$2(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/List;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mOriginalEvents:Ljava/util/List;
    invoke-static {v13, v15}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$3(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/util/List;)V

    .line 435
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 441
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v13}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$1(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 442
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mOriginalEvents:Ljava/util/List;
    invoke-static {v13}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$0(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/core/PhoneEvent;>;"
    iput-object v6, v9, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 444
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v9, Landroid/widget/Filter$FilterResults;->count:I

    .line 441
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 481
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/core/PhoneEvent;>;"
    :goto_0
    return-object v9

    .line 435
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 441
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 447
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mOriginalEvents:Ljava/util/List;
    invoke-static {v13}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$0(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/List;

    move-result-object v10

    .line 450
    .local v10, values:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/PhoneEvent;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 452
    .local v2, count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v7, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/core/PhoneEvent;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v2, :cond_3

    .line 477
    iput-object v7, v9, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 478
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v9, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 455
    :cond_3
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/PhoneEvent;

    .line 457
    .local v3, event:Lnitro/phonestats/core/PhoneEvent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;
    invoke-static {v13}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$4(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    .line 458
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;
    invoke-static {v13}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$4(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/HashMap;

    move-result-object v13

    iget-object v15, v3, Lnitro/phonestats/core/PhoneEvent;->number:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, contactName:Ljava/lang/String;
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 460
    if-nez v1, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    iget-object v14, v3, Lnitro/phonestats/core/PhoneEvent;->number:Ljava/lang/String;

    #calls: Lnitro/phonestats/view/adapters/LogViewAdapter;->addContactToTmpData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v13, v14}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$5(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 463
    :cond_5
    iget-object v13, v3, Lnitro/phonestats/core/PhoneEvent;->number:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 464
    :cond_6
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 457
    .end local v1           #contactName:Ljava/lang/String;
    :catchall_2
    move-exception v13

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v13

    .line 465
    .restart local v1       #contactName:Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_7

    .line 466
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 467
    .local v12, words:[Ljava/lang/String;
    array-length v11, v12

    .line 468
    .local v11, wordCount:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    if-ge v5, v11, :cond_7

    .line 469
    aget-object v13, v12, v5

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 470
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 468
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 487
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$1(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 489
    :try_start_0
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;
    invoke-static {v2, v0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$6(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/util/List;)V

    .line 487
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #calls: Lnitro/phonestats/view/adapters/LogViewAdapter;->initSectionData()V
    invoke-static {v0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$7(Lnitro/phonestats/view/adapters/LogViewAdapter;)V

    .line 492
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    invoke-virtual {v0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->notifyDataSetChanged()V

    .line 493
    return-void

    .line 487
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
