.class public abstract Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;
.super Landroid/widget/CursorAdapter;
.source "AbstractFilterListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field protected mContent:Landroid/content/ContentResolver;

.field protected wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "wildcard"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;->mContent:Landroid/content/ContentResolver;

    .line 18
    iput-object p3, p0, Lnitro/phonestats/view/adapters/AbstractFilterListAdapter;->wildcard:Ljava/lang/String;

    .line 19
    return-void
.end method
