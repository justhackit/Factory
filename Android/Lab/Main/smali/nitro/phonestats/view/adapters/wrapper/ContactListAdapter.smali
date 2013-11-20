.class public Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;
.super Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;
.source "ContactListAdapter.java"


# static fields
.field private static ECLAIR:Z

.field private static final PEOPLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->checkAvailable()V

    .line 27
    const/4 v1, 0x1

    sput-boolean v1, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->ECLAIR:Z
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v0, ex:Ljava/lang/VerifyError;
    :goto_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "primary_phone"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 51
    const-string v3, "number"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "label"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v1, v2

    .line 49
    sput-object v1, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 18
    return-void

    .line 28
    .end local v0           #ex:Ljava/lang/VerifyError;
    :catch_0
    move-exception v0

    .line 29
    .restart local v0       #ex:Ljava/lang/VerifyError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ERROR: PRE ECLAIR SYSTEM DETECTED"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    sput-boolean v3, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->ECLAIR:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "wildcard"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->mContent:Landroid/content/ContentResolver;

    .line 57
    const-string v0, "Using old adapter"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static getAdapter(Landroid/content/Context;Ljava/lang/String;)Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;
    .locals 7
    .parameter "ctx"
    .parameter "wildcard"

    .prologue
    const/4 v3, 0x0

    .line 36
    sget-boolean v0, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->ECLAIR:Z

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 39
    const-string v5, "name ASC"

    move-object v4, v3

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 40
    .local v6, peopleCursor:Landroid/database/Cursor;
    new-instance v0, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;

    invoke-direct {v0, p0, v6, p1}, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 44
    .end local v6           #peopleCursor:Landroid/database/Cursor;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->getAdapter(Landroid/content/Context;Ljava/lang/String;)Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 83
    const v2, 0x7f0a005b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, top:Landroid/widget/TextView;
    const v2, 0x7f0a005c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, bottom:Landroid/widget/TextView;
    const/4 v2, 0x5

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 93
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000d

    .line 69
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a005b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, top:Landroid/widget/TextView;
    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, bottom:Landroid/widget/TextView;
    const/4 v4, 0x5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-object v3
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"

    .prologue
    .line 99
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    :goto_0
    return-object v7

    .line 104
    :cond_0
    const/4 v6, 0x0

    .line 105
    .local v6, buffer:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 106
    .local v4, args:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #buffer:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .restart local v6       #buffer:Ljava/lang/StringBuilder;
    const-string v0, "UPPER("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, "name"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, ") GLOB ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->wildcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 115
    .restart local v4       #args:[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->mContent:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 116
    sget-object v2, Lnitro/phonestats/view/adapters/wrapper/ContactListAdapter;->PEOPLE_PROJECTION:[Ljava/lang/String;

    if-nez v6, :cond_2

    const/4 v3, 0x0

    .line 117
    :goto_1
    const-string v5, "name ASC"

    .line 115
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 121
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> cursor size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
