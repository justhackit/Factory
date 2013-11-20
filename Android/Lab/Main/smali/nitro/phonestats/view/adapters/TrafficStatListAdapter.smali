.class public Lnitro/phonestats/view/adapters/TrafficStatListAdapter;
.super Ljava/lang/Object;
.source "TrafficStatListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;
    }
.end annotation


# instance fields
.field buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/TrafficStat;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lnitro/phonestats/core/IStatManager;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lnitro/phonestats/core/IStatManager;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "model"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/TrafficStat;",
            ">;",
            "Lnitro/phonestats/core/IStatManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/TrafficStat;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->buffers:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mData:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mModel:Lnitro/phonestats/core/IStatManager;

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mObservers:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->getView2(Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getBuffer(I)Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;
    .locals 2
    .parameter "position"

    .prologue
    .line 210
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->buffers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;

    return-object v0
.end method

.method private getView2(Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)Landroid/view/View;
    .locals 15
    .parameter "view"
    .parameter "data"
    .parameter "position"
    .parameter "buffer"

    .prologue
    .line 147
    move-object/from16 v0, p4

    iget-object v7, v0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->totalValue:Ljava/lang/String;

    .line 148
    .local v7, sTotal:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v6, v0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->downValue:Ljava/lang/String;

    .line 149
    .local v6, sDown:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v8, v0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;->upValue:Ljava/lang/String;

    .line 152
    .local v8, sUp:Ljava/lang/String;
    const v13, 0x7f0a0017

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 153
    .local v3, header:Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lnitro/phonestats/core/stat/TrafficStat;->getNameResource()I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    .line 157
    const v13, 0x7f0a0018

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 158
    .local v11, valueTotalView:Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lnitro/phonestats/core/stat/TrafficStat;->getUnitResource()I

    move-result v9

    .line 160
    .local v9, unitResource:I
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v13, 0x7f0a0019

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 165
    .local v10, valueDownView:Landroid/widget/TextView;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-le v13, v14, :cond_0

    .line 166
    const-string v6, ""

    .line 167
    :cond_0
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const v13, 0x7f0a001a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 172
    .local v12, valueUpView:Landroid/widget/TextView;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-le v13, v14, :cond_1

    .line 173
    const-string v8, ""

    .line 174
    :cond_1
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v13, "dd.MM.yyyy"

    invoke-direct {v2, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, df:Ljava/text/SimpleDateFormat;
    const v13, 0x7f0a00b8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnitro/phonestats/view/quickaction/QuickInfo;

    .line 183
    .local v4, infoBtn:Lnitro/phonestats/view/quickaction/QuickInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v5, infoData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lnitro/phonestats/core/stat/TrafficStat;->getDescriptionResource()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lnitro/phonestats/core/stat/TrafficStat;->getIncomingValue()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const v13, 0x7f03001e

    new-instance v14, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;

    move-object/from16 v0, p2

    invoke-direct {v14, p0, v5, v0, v2}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$2;-><init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;Ljava/util/List;Lnitro/phonestats/core/stat/TrafficStat;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v4, v13, v5, v14}, Lnitro/phonestats/view/quickaction/QuickInfo;->setView(ILjava/util/List;Landroid/view/View$OnClickListener;)V

    .line 204
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->setBuffer(ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)V

    .line 206
    return-object p1
.end method

.method private notifyObservers()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 57
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method private setBuffer(ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)V
    .locals 2
    .parameter "position"
    .parameter "buffer"

    .prologue
    .line 215
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->buffers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 77
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 93
    if-nez p2, :cond_1

    .line 94
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 99
    .local v4, view:Landroid/view/View;
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/TrafficStat;

    .line 101
    .local v2, data:Lnitro/phonestats/core/stat/TrafficStat;
    invoke-direct {p0, p1}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->getBuffer(I)Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;

    move-result-object v6

    .line 105
    .local v6, buffer:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;
    invoke-static {}, Lnitro/phonestats/Main;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v6, :cond_2

    .line 108
    :cond_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;

    move-object v1, p0

    move-object v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter$1;-><init>(Lnitro/phonestats/view/adapters/TrafficStatListAdapter;Lnitro/phonestats/core/stat/TrafficStat;Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 141
    :goto_1
    return-object v4

    .line 96
    .end local v2           #data:Lnitro/phonestats/core/stat/TrafficStat;
    .end local v4           #view:Landroid/view/View;
    .end local v6           #buffer:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;
    :cond_1
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 135
    .restart local v2       #data:Lnitro/phonestats/core/stat/TrafficStat;
    .restart local v6       #buffer:Lnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;
    :cond_2
    const-string v0, "use buffered"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, v4, v2, p1, v6}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->getView2(Landroid/view/View;Lnitro/phonestats/core/stat/TrafficStat;ILnitro/phonestats/view/adapters/TrafficStatListAdapter$DataBuffer;)Landroid/view/View;

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 235
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v1

    .line 238
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
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
    .line 50
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/TrafficStat;>;"
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mData:Ljava/util/List;

    .line 51
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->buffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 52
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->notifyObservers()V

    .line 53
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 242
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/TrafficStatListAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit v1

    .line 245
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
