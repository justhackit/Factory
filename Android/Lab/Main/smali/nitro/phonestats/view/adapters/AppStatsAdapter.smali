.class public Lnitro/phonestats/view/adapters/AppStatsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppStatsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
        ">;"
    }
.end annotation


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumberFormatter:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/activities/AppList$AppTrafficValue;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p3, p0, Lnitro/phonestats/view/adapters/AppStatsAdapter;->items:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/AppStatsAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 26
    iget-object v0, p0, Lnitro/phonestats/view/adapters/AppStatsAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnitro/phonestats/view/adapters/AppStatsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lnitro/phonestats/view/adapters/AppStatsAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 33
    move-object/from16 v8, p2

    .line 35
    .local v8, v:Landroid/view/View;
    if-nez v8, :cond_0

    .line 36
    move-object/from16 v0, p0

    iget-object v9, v0, Lnitro/phonestats/view/adapters/AppStatsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030004

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 39
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnitro/phonestats/view/adapters/AppStatsAdapter;->getItems()Ljava/util/List;

    move-result-object v9

    move/from16 v0, p1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    .line 40
    .local v1, data:Lnitro/phonestats/activities/AppList$AppTrafficValue;
    if-eqz v1, :cond_5

    .line 41
    const v9, 0x7f0a0017

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 42
    .local v5, nameView:Landroid/widget/TextView;
    const v9, 0x7f0a0018

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 43
    .local v6, totalTrafficView:Landroid/widget/TextView;
    const v9, 0x7f0a0019

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, downTrafficView:Landroid/widget/TextView;
    const v9, 0x7f0a001a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 45
    .local v7, upTrafficView:Landroid/widget/TextView;
    const v9, 0x7f0a0014

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 46
    .local v3, ic:Landroid/widget/ImageView;
    if-eqz v5, :cond_1

    .line 47
    iget-object v4, v1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->appName:Ljava/lang/String;

    .line 48
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->outgoingBytes:J

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    iget-wide v12, v1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->incomingBytes:J

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_2
    if-eqz v2, :cond_3

    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->incomingBytes:J

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_3
    if-eqz v7, :cond_4

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->outgoingBytes:J

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_4
    if-eqz v3, :cond_5

    .line 69
    iget-object v9, v1, Lnitro/phonestats/activities/AppList$AppTrafficValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .end local v2           #downTrafficView:Landroid/widget/TextView;
    .end local v3           #ic:Landroid/widget/ImageView;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v6           #totalTrafficView:Landroid/widget/TextView;
    .end local v7           #upTrafficView:Landroid/widget/TextView;
    :cond_5
    return-object v8
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/activities/AppList$AppTrafficValue;>;"
    iput-object p1, p0, Lnitro/phonestats/view/adapters/AppStatsAdapter;->items:Ljava/util/List;

    .line 78
    return-void
.end method
