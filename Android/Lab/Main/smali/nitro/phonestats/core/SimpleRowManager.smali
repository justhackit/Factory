.class public abstract Lnitro/phonestats/core/SimpleRowManager;
.super Ljava/lang/Object;
.source "SimpleRowManager.java"


# instance fields
.field protected ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnitro/phonestats/core/SimpleRowManager;->ctx:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method protected clearEntries(Ljava/lang/String;)V
    .locals 2
    .parameter "table"

    .prologue
    const/4 v1, 0x0

    .line 19
    iget-object v0, p0, Lnitro/phonestats/core/SimpleRowManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public abstract clearEntriesCalls()V
.end method

.method protected deleteEntry(JLjava/lang/String;)Z
    .locals 3
    .parameter "rowId"
    .parameter "table"

    .prologue
    .line 25
    iget-object v0, p0, Lnitro/phonestats/core/SimpleRowManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/core/SimpleRowManager;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract deleteEntryCalls(J)Z
.end method

.method protected abstract fetchAllEntriesCalls()Landroid/database/Cursor;
.end method

.method protected abstract getKeyName()Ljava/lang/String;
.end method
