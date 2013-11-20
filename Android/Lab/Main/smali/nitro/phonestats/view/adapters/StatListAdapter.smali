.class public Lnitro/phonestats/view/adapters/StatListAdapter;
.super Ljava/lang/Object;
.source "StatListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;,
        Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$nitro$phonestats$view$adapters$StatListAdapter$DisplayMode:[I = null

.field public static final CATEGORY:I = 0x2

.field public static final MODE_SELECT:I = 0x1

.field public static final STAT_ITEM:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field private mInflater:Landroid/view/LayoutInflater;

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

.field private mOnStatClickedListener:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

.field private mWholeData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private monthShift:I


# direct methods
.method static synthetic $SWITCH_TABLE$nitro$phonestats$view$adapters$StatListAdapter$DisplayMode()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter;->$SWITCH_TABLE$nitro$phonestats$view$adapters$StatListAdapter$DisplayMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->values()[Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ALL:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->SIMPLE:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnitro/phonestats/view/adapters/StatListAdapter;->$SWITCH_TABLE$nitro$phonestats$view$adapters$StatListAdapter$DisplayMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/view/adapters/StatListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->monthShift:I

    .line 54
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mWholeData:Ljava/util/List;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mObservers:Ljava/util/List;

    .line 58
    invoke-virtual {p0, p3}, Lnitro/phonestats/view/adapters/StatListAdapter;->setDisplayMode(Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/view/adapters/StatListAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lnitro/phonestats/view/adapters/StatListAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->monthShift:I

    return v0
.end method

.method static synthetic access$3(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$5(Lnitro/phonestats/view/adapters/StatListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/StatListAdapter;->refreshDisplayedData()V

    return-void
.end method

.method private getDisplayModeView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f0a00b9

    const/4 v4, 0x0

    .line 239
    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 240
    :cond_0
    iget-object v2, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030022

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, modeText:Landroid/widget/TextView;
    iget-object v2, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    sget-object v3, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    if-ne v2, v3, :cond_2

    .line 246
    const v2, 0x7f07011b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 247
    const v2, 0x1080002

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 253
    :goto_1
    return-object v1

    .line 242
    .end local v0           #modeText:Landroid/widget/TextView;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 249
    .restart local v0       #modeText:Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f07011a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    const v2, 0x1080003

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private getStatView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    .line 174
    if-nez p2, :cond_0

    .line 175
    iget-object v5, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030021

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 179
    .local v4, view:Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    .line 182
    .local v0, data:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    .local v1, header:Landroid/widget/TextView;
    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->getNameResource()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 186
    const v5, 0x7f0a00b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 187
    .local v3, valueView:Landroid/widget/TextView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Lnitro/phonestats/core/stat/Stat;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v5, 0x7f0a00b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 191
    .local v2, infoBtn:Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 193
    new-instance v5, Lnitro/phonestats/view/adapters/StatListAdapter$1;

    invoke-direct {v5, p0, v2, v0}, Lnitro/phonestats/view/adapters/StatListAdapter$1;-><init>(Lnitro/phonestats/view/adapters/StatListAdapter;Landroid/widget/ImageView;Lnitro/phonestats/core/stat/Stat;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-object v4

    .line 177
    .end local v0           #data:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    .end local v1           #header:Landroid/widget/TextView;
    .end local v2           #infoBtn:Landroid/widget/ImageView;
    .end local v3           #valueView:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0
.end method

.method private notifyObservers()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 111
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method private refreshDisplayedData()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lnitro/phonestats/view/adapters/StatListAdapter;->$SWITCH_TABLE$nitro$phonestats$view$adapters$StatListAdapter$DisplayMode()[I

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    invoke-virtual {v2}, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mWholeData:Ljava/util/List;

    iput-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    .line 106
    :cond_0
    :goto_1
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/StatListAdapter;->notifyObservers()V

    goto :goto_0

    .line 93
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    .line 94
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mWholeData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    .line 95
    .local v0, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->isInFavories()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    .end local v0           #stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    :pswitch_2
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mWholeData:Ljava/util/List;

    iput-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->SIMPLE:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDisplayMode()Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 145
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 153
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 158
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnStatClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mOnStatClickedListener:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

    invoke-direct {v0, p0}, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;-><init>(Lnitro/phonestats/view/adapters/StatListAdapter;)V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mOnStatClickedListener:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

    .line 117
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mOnStatClickedListener:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lnitro/phonestats/view/adapters/StatListAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/view/adapters/StatListAdapter;->getStatView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/view/adapters/StatListAdapter;->getDisplayModeView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->SIMPLE:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    sget-object v1, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->SIMPLE:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 280
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v1

    .line 283
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisplayMode(Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 71
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    if-ne p1, v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 74
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/StatListAdapter;->refreshDisplayedData()V

    goto :goto_0
.end method

.method public setMonthShift(I)V
    .locals 0
    .parameter "shift"

    .prologue
    .line 338
    iput p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->monthShift:I

    .line 340
    return-void
.end method

.method public setNewData(Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V
    .locals 0
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mWholeData:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 84
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/StatListAdapter;->refreshDisplayedData()V

    .line 85
    return-void
.end method

.method public toggleDisplayMode()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mDisplayMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    sget-object v2, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    if-ne v1, v2, :cond_0

    .line 64
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->ALL:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 67
    .local v0, mode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    :goto_0
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/adapters/StatListAdapter;->setDisplayMode(Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 68
    return-void

    .line 66
    .end local v0           #mode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    :cond_0
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .restart local v0       #mode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 287
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v1

    .line 290
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
