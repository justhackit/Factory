.class public Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;
.super Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;
.source "EclairContactListAdapter.java"


# static fields
.field private static final PEOPLE_PROJECTION_ECLAIR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 21
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 22
    const-string v2, "data1"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->PEOPLE_PROJECTION_ECLAIR:[Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "wildcard"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 29
    const-string v0, "Using new adapter"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static getAdapter(Landroid/content/Context;Ljava/lang/String;)Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;
    .locals 7
    .parameter "ctx"
    .parameter "wildcard"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->PEOPLE_PROJECTION_ECLAIR:[Ljava/lang/String;

    .line 103
    const-string v5, "display_name"

    move-object v4, v3

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    .local v6, peopleCursor:Landroid/database/Cursor;
    new-instance v0, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;

    invoke-direct {v0, p0, v6, p1}, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 36
    const v2, 0x7f0a005b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, top:Landroid/widget/TextView;
    const v2, 0x7f0a005c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, bottom:Landroid/widget/TextView;
    const-string v2, "display_name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const-string v2, "data1"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 59
    const-string v0, "data1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

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
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 47
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000d

    const/4 v5, 0x0

    .line 46
    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 49
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a005b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, top:Landroid/widget/TextView;
    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, bottom:Landroid/widget/TextView;
    const-string v4, "display_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object v3
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"

    .prologue
    .line 65
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v7

    .line 95
    :goto_0
    return-object v7

    .line 70
    :cond_0
    const/4 v6, 0x0

    .line 71
    .local v6, buffer:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 72
    .local v4, args:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #buffer:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .restart local v6       #buffer:Ljava/lang/StringBuilder;
    const-string v0, "UPPER("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "display_name"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, ") GLOB ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
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

    iget-object v2, p0, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->wildcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 81
    .restart local v4       #args:[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->mContent:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    sget-object v2, Lnitro/phonestats/view/adapters/wrapper/EclairContactListAdapter;->PEOPLE_PROJECTION_ECLAIR:[Ljava/lang/String;

    if-nez v6, :cond_2

    const/4 v3, 0x0

    .line 84
    :goto_1
    const-string v5, "display_name"

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 91
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraint new: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> cursor size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
