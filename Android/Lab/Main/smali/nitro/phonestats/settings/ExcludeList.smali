.class public Lnitro/phonestats/settings/ExcludeList;
.super Landroid/app/Activity;
.source "ExcludeList.java"


# static fields
.field private static final CALLS:I = 0x2

.field private static final SMS:I = 0x1

.field private static wildcard:Ljava/lang/String;


# instance fields
.field adapter:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

.field input:Landroid/widget/AutoCompleteTextView;

.field items2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDbCursor:Landroid/database/Cursor;

.field private mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

.field standarttext:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->items2:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->standarttext:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lnitro/phonestats/settings/ExcludeList;->wildcard:Ljava/lang/String;

    return-object v0
.end method

.method private checkType()V
    .locals 4

    .prologue
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nr of extras in intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, type:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 223
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v2, 0x1

    iput v2, p0, Lnitro/phonestats/settings/ExcludeList;->type:I

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lnitro/phonestats/settings/ExcludeList;->type:I

    goto :goto_0
.end method

.method public static getPatternSymbol(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 269
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useAlternativePatttern(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "@"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "*"

    goto :goto_0
.end method

.method private startDBConnection()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/ExcludedNumbersManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

    .line 203
    iget v0, p0, Lnitro/phonestats/settings/ExcludeList;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesCalls()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    .line 211
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/ExcludeList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 213
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesSMS()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeList;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 58
    const v4, 0x7f03000e

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lnitro/phonestats/settings/ExcludeList;->checkType()V

    .line 62
    invoke-static {p0}, Lnitro/phonestats/settings/ExcludeList;->getPatternSymbol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnitro/phonestats/settings/ExcludeList;->wildcard:Ljava/lang/String;

    .line 64
    const v4, 0x7f0a0016

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/view/quickaction/QuickInfo;

    .line 66
    .local v2, quickinfo:Lnitro/phonestats/view/quickaction/QuickInfo;
    iget v4, p0, Lnitro/phonestats/settings/ExcludeList;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const v4, 0x7f070081

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Lnitro/phonestats/view/quickaction/QuickInfo;->setText(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lnitro/phonestats/settings/ExcludeList;->startDBConnection()V

    .line 71
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    :cond_0
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->items2:Ljava/util/ArrayList;

    iget-object v5, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    .line 76
    const-string v7, "number"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 75
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 73
    if-nez v4, :cond_0

    .line 80
    :cond_1
    const v4, 0x7f0a005d

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    iput-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    .line 81
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->standarttext:Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    sget-object v5, Lnitro/phonestats/settings/ExcludeList;->wildcard:Ljava/lang/String;

    invoke-static {p0, v5}, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->getAdapter(Landroid/content/Context;Ljava/lang/String;)Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    new-instance v4, Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    .line 88
    const v5, 0x1090003

    iget-object v6, p0, Lnitro/phonestats/settings/ExcludeList;->items2:Ljava/util/ArrayList;

    sget-object v7, Lnitro/phonestats/settings/ExcludeList;->wildcard:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v7}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 87
    iput-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->adapter:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    .line 90
    const v4, 0x7f0a000d

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 92
    .local v1, list:Landroid/widget/ListView;
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->adapter:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    const v4, 0x7f0a005e

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    .local v0, addButton:Landroid/widget/Button;
    new-instance v4, Lnitro/phonestats/settings/ExcludeList$1;

    invoke-direct {v4, p0}, Lnitro/phonestats/settings/ExcludeList$1;-><init>(Lnitro/phonestats/settings/ExcludeList;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v4, 0x7f0a005f

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 138
    .local v3, saveButton:Landroid/widget/Button;
    new-instance v4, Lnitro/phonestats/settings/ExcludeList$2;

    invoke-direct {v4, p0}, Lnitro/phonestats/settings/ExcludeList$2;-><init>(Lnitro/phonestats/settings/ExcludeList;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    new-instance v5, Lnitro/phonestats/settings/ExcludeList$3;

    invoke-direct {v5, p0}, Lnitro/phonestats/settings/ExcludeList$3;-><init>(Lnitro/phonestats/settings/ExcludeList;)V

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeList;->input:Landroid/widget/AutoCompleteTextView;

    new-instance v5, Lnitro/phonestats/settings/ExcludeList$4;

    invoke-direct {v5, p0, v0}, Lnitro/phonestats/settings/ExcludeList$4;-><init>(Lnitro/phonestats/settings/ExcludeList;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    return-void

    .line 67
    .end local v0           #addButton:Landroid/widget/Button;
    .end local v1           #list:Landroid/widget/ListView;
    .end local v3           #saveButton:Landroid/widget/Button;
    :cond_2
    const v4, 0x7f070080

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ExcludeList;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeList;->mDbCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 279
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeList;->save()V

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 259
    invoke-static {p0}, Lnitro/phonestats/settings/ExcludeList;->getPatternSymbol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/settings/ExcludeList;->wildcard:Ljava/lang/String;

    .line 263
    const v0, 0x7f07009d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lnitro/phonestats/settings/ExcludeList;->wildcard:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lnitro/phonestats/settings/ExcludeList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p0, v0}, Lnitro/phonestats/core/helper/NitroUtils;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method protected save()V
    .locals 3

    .prologue
    .line 232
    const-string v1, "Save data"

    invoke-static {p0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    iget v1, p0, Lnitro/phonestats/settings/ExcludeList;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 236
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList;->mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v1}, Lnitro/phonestats/core/ExcludedNumbersManager;->clearEntriesCalls()V

    .line 238
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList;->items2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/settings/ExcludeList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    .line 249
    const-string v2, "exclude list"

    .line 248
    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->firePreferenceChange(Ljava/lang/String;)V

    .line 251
    return-void

    .line 238
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, item:Ljava/lang/String;
    iget-object v2, p0, Lnitro/phonestats/settings/ExcludeList;->mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v2, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->createEntryCalls(Ljava/lang/String;)J

    goto :goto_0

    .line 242
    .end local v0           #item:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList;->mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v1}, Lnitro/phonestats/core/ExcludedNumbersManager;->clearEntriesSMS()V

    .line 244
    iget-object v1, p0, Lnitro/phonestats/settings/ExcludeList;->items2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .restart local v0       #item:Ljava/lang/String;
    iget-object v2, p0, Lnitro/phonestats/settings/ExcludeList;->mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v2, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->createEntrySMS(Ljava/lang/String;)J

    goto :goto_1
.end method
