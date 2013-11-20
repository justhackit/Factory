.class public Lnitro/phonestats/settings/ExcludeTimesList;
.super Landroid/app/Activity;
.source "ExcludeTimesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_ADD_TIME:I


# instance fields
.field private adapter:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

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

.field private timesManager:Lnitro/phonestats/core/ExcludedTimesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList;->items:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/ExcludeTimesList;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/settings/ExcludeTimesList;)Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList;->adapter:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeTimesList;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 103
    const v3, 0x7f030010

    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/ExcludeTimesList;->setContentView(I)V

    .line 105
    new-instance v3, Lnitro/phonestats/core/ExcludedTimesManager;

    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeTimesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lnitro/phonestats/core/ExcludedTimesManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnitro/phonestats/settings/ExcludeTimesList;->timesManager:Lnitro/phonestats/core/ExcludedTimesManager;

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeTimesList;->timesManager:Lnitro/phonestats/core/ExcludedTimesManager;

    invoke-virtual {v4}, Lnitro/phonestats/core/ExcludedTimesManager;->getExcludedTimes()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lnitro/phonestats/settings/ExcludeTimesList;->items:Ljava/util/ArrayList;

    .line 110
    new-instance v3, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    const v4, 0x1090003

    .line 111
    iget-object v5, p0, Lnitro/phonestats/settings/ExcludeTimesList;->items:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4, v5}, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;-><init>(Lnitro/phonestats/settings/ExcludeTimesList;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 110
    iput-object v3, p0, Lnitro/phonestats/settings/ExcludeTimesList;->adapter:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    .line 113
    const v3, 0x7f0a0064

    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/ExcludeTimesList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 115
    .local v1, list:Landroid/widget/ListView;
    iget-object v3, p0, Lnitro/phonestats/settings/ExcludeTimesList;->adapter:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    const v3, 0x7f0a0065

    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/ExcludeTimesList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 119
    .local v2, saveButton:Landroid/widget/Button;
    new-instance v3, Lnitro/phonestats/settings/ExcludeTimesList$1;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/ExcludeTimesList$1;-><init>(Lnitro/phonestats/settings/ExcludeTimesList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f0a0063

    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/ExcludeTimesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 133
    .local v0, addButton:Landroid/widget/Button;
    new-instance v3, Lnitro/phonestats/settings/ExcludeTimesList$2;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/ExcludeTimesList$2;-><init>(Lnitro/phonestats/settings/ExcludeTimesList;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 169
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 170
    .local v2, dialog:Landroid/app/Dialog;
    const v0, 0x7f070098

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 171
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/ExcludeTimesList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 172
    .local v7, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 173
    const v0, 0x7f030001

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 174
    const v0, 0x7f0a0008

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 175
    .local v3, daySpinner:Landroid/widget/Spinner;
    const v0, 0x7f0a000a

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 176
    .local v4, starttimeSpinner:Landroid/widget/Spinner;
    const v0, 0x7f0a000b

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 177
    .local v5, endtimeSpinner:Landroid/widget/Spinner;
    const v0, 0x7f0a000c

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 178
    .local v6, button:Landroid/widget/Button;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    new-instance v0, Lnitro/phonestats/settings/ExcludeTimesList$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnitro/phonestats/settings/ExcludeTimesList$3;-><init>(Lnitro/phonestats/settings/ExcludeTimesList;Landroid/app/Dialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v0, Lnitro/phonestats/settings/ExcludeTimesList$4;

    invoke-direct {v0, p0, v5, v6}, Lnitro/phonestats/settings/ExcludeTimesList$4;-><init>(Lnitro/phonestats/settings/ExcludeTimesList;Landroid/widget/Spinner;Landroid/widget/Button;)V

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    new-instance v0, Lnitro/phonestats/settings/ExcludeTimesList$5;

    invoke-direct {v0, p0, v4, v6}, Lnitro/phonestats/settings/ExcludeTimesList$5;-><init>(Lnitro/phonestats/settings/ExcludeTimesList;Landroid/widget/Spinner;Landroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 239
    .end local v2           #dialog:Landroid/app/Dialog;
    .end local v3           #daySpinner:Landroid/widget/Spinner;
    .end local v4           #starttimeSpinner:Landroid/widget/Spinner;
    .end local v5           #endtimeSpinner:Landroid/widget/Spinner;
    .end local v6           #button:Landroid/widget/Button;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0
.end method

.method protected save()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeTimesList;->timesManager:Lnitro/phonestats/core/ExcludedTimesManager;

    invoke-virtual {v1}, Lnitro/phonestats/core/ExcludedTimesManager;->clearEntriesCalls()V

    .line 154
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeTimesList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeTimesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    const-string v2, "excludedtimes list"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->firePreferenceChange(Ljava/lang/String;)V

    .line 158
    return-void

    .line 154
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;

    .line 155
    .local v0, item:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
    iget-object v2, p0, Lnitro/phonestats/settings/ExcludeTimesList;->timesManager:Lnitro/phonestats/core/ExcludedTimesManager;

    invoke-virtual {v2, v0}, Lnitro/phonestats/core/ExcludedTimesManager;->createEntry(Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;)J

    goto :goto_0
.end method
