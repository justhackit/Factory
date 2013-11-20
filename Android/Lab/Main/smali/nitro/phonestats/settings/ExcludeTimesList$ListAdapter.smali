.class Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ExcludeTimesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/settings/ExcludeTimesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnitro/phonestats/settings/ExcludeTimesList;


# direct methods
.method public constructor <init>(Lnitro/phonestats/settings/ExcludeTimesList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;>;"
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    .line 45
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    iput-object p4, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->items:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 53
    move-object v5, p2

    .line 55
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_0

    .line 57
    iget-object v7, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lnitro/phonestats/settings/ExcludeTimesList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 58
    .local v6, vi:Landroid/view/LayoutInflater;
    const v7, 0x7f03000f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 61
    .end local v6           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v7, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;

    .line 62
    .local v3, o:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
    if-eqz v3, :cond_3

    .line 64
    const v7, 0x7f0a0060

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 65
    .local v4, tt:Landroid/widget/TextView;
    const v7, 0x7f0a0061

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, bt:Landroid/widget/TextView;
    const v7, 0x7f0a0062

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    check-cast v1, Landroid/widget/ImageButton;

    .line 68
    .local v1, btn:Landroid/widget/ImageButton;
    if-eqz v4, :cond_1

    .line 70
    iget-object v7, v3, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    iget-object v8, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    invoke-virtual {v8}, Lnitro/phonestats/settings/ExcludeTimesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, v3, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->starttime:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":00 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->endtime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_2
    if-eqz v1, :cond_3

    .line 79
    new-instance v7, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;

    invoke-direct {v7, p0, p1}, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;-><init>(Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .end local v0           #bt:Landroid/widget/TextView;
    .end local v1           #btn:Landroid/widget/ImageButton;
    .end local v4           #tt:Landroid/widget/TextView;
    :cond_3
    return-object v5
.end method
