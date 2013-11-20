.class public Lnitro/phonestats/view/adapters/ExcludeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ExcludeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "wildcard"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    invoke-virtual {p0, p3}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 32
    iput-object p4, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->wildcard:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    move-object/from16 v8, p2

    .line 40
    .local v8, v:Landroid/view/View;
    if-nez v8, :cond_0

    .line 42
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 43
    .local v9, vi:Landroid/view/LayoutInflater;
    const v10, 0x7f03000f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 46
    .end local v9           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 47
    .local v6, o:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 49
    const v10, 0x7f0a0060

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 50
    .local v7, tt:Landroid/widget/TextView;
    const v10, 0x7f0a0061

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, bt:Landroid/widget/TextView;
    const v10, 0x7f0a0062

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 52
    .local v2, btn:Landroid/widget/ImageButton;
    const v10, 0x7f0a0014

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 53
    .local v4, ic:Landroid/widget/ImageView;
    if-eqz v7, :cond_2

    .line 56
    iget-object v10, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->wildcard:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 57
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<Pattern ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v11

    .line 62
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v12

    .line 60
    invoke-static {v6, v11, v12}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v11

    .line 62
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 59
    invoke-static {v11, v12}, Lnitro/phonestats/core/helper/StatsUtils;->searchMatchingNumbers2(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 62
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 58
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 62
    const-string v11, ")>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, name:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 69
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0700a2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0700a1

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0700a0

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v11

    .line 78
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v12

    .line 76
    invoke-static {v6, v11, v12}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 75
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_3
    if-eqz v2, :cond_4

    .line 82
    new-instance v10, Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;

    invoke-direct {v10, p0, p1}, Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;-><init>(Lnitro/phonestats/view/adapters/ExcludeListAdapter;I)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_4
    if-eqz v4, :cond_5

    .line 96
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lnitro/phonestats/core/helper/NitroUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v3

    .line 98
    .local v3, density:F
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v6, v10}, Lnitro/phonestats/core/wrapper/ContactsWrapper;->getContactBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 99
    const/16 v11, 0x32

    invoke-static {v3, v11}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v11

    .line 100
    const/16 v12, 0x32

    invoke-static {v3, v12}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v12

    const/4 v13, 0x0

    .line 97
    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bt:Landroid/widget/TextView;
    .end local v2           #btn:Landroid/widget/ImageButton;
    .end local v3           #density:F
    .end local v4           #ic:Landroid/widget/ImageView;
    .end local v7           #tt:Landroid/widget/TextView;
    :cond_5
    return-object v8

    .line 65
    .restart local v1       #bt:Landroid/widget/TextView;
    .restart local v2       #btn:Landroid/widget/ImageButton;
    .restart local v4       #ic:Landroid/widget/ImageView;
    .restart local v7       #tt:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 64
    invoke-static {v10, v6}, Lnitro/phonestats/core/helper/StatsUtils;->findContactByNumber2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #name:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->items:Ljava/util/ArrayList;

    .line 112
    return-void
.end method
