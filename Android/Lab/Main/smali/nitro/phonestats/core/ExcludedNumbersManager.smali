.class public Lnitro/phonestats/core/ExcludedNumbersManager;
.super Lnitro/phonestats/core/SimpleRowManager;
.source "ExcludedNumbersManager.java"


# static fields
.field public static final EXPORT_FILE_VERSION:Ljava/lang/String; = "v1"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnitro/phonestats/core/SimpleRowManager;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private createEntry(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "number"
    .parameter "table"

    .prologue
    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private fetchAllEntries(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "table"

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->getKeyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "number"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 82
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private fetchNumber(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "rowId"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 103
    iget-object v0, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->getKeyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "number"

    aput-object v2, v3, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 103
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 106
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 108
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    :cond_0
    return-object v10
.end method

.method private getExcludedNumbers(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    const-string v7, "calls"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesCalls()Landroid/database/Cursor;

    move-result-object v2

    .line 240
    .local v2, cursor:Landroid/database/Cursor;
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 242
    .local v3, entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v6

    .line 243
    .local v6, useCCC:Z
    iget-object v7, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v0

    .line 245
    .local v0, ccc:I
    const-string v7, "number"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 248
    .local v1, colID:I
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 254
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6, v0}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, number:Ljava/lang/String;
    iget-object v7, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lnitro/phonestats/settings/ExcludeList;->getPatternSymbol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 258
    iget-object v7, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v5, v7}, Lnitro/phonestats/core/helper/StatsUtils;->searchMatchingNumbers2(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 259
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "found numbern pattern "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " matches.size()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " results"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 265
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 251
    if-nez v7, :cond_0

    .line 268
    .end local v5           #number:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    return-object v3

    .line 238
    .end local v0           #ccc:I
    .end local v1           #colID:I
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #useCCC:Z
    :cond_2
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesSMS()Landroid/database/Cursor;

    move-result-object v2

    .restart local v2       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 263
    .restart local v0       #ccc:I
    .restart local v1       #colID:I
    .restart local v3       #entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #useCCC:Z
    :cond_3
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 267
    .end local v5           #number:Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 269
    throw v7
.end method

.method private getSimpleExcludedNumbers(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v6, "calls"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 140
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesCalls()Landroid/database/Cursor;

    move-result-object v2

    .line 144
    .local v2, cursor:Landroid/database/Cursor;
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v3, entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v5

    .line 147
    .local v5, useCCC:Z
    iget-object v6, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v0

    .line 149
    .local v0, ccc:I
    const-string v6, "number"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, colID:I
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5, v0}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, number:Ljava/lang/String;
    iget-object v6, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lnitro/phonestats/settings/ExcludeList;->getPatternSymbol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 161
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 155
    if-nez v6, :cond_0

    .line 166
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 170
    return-object v3

    .line 142
    .end local v0           #ccc:I
    .end local v1           #colID:I
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5           #useCCC:Z
    :cond_3
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesSMS()Landroid/database/Cursor;

    move-result-object v2

    .restart local v2       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 165
    .restart local v0       #ccc:I
    .restart local v1       #colID:I
    .restart local v3       #entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5       #useCCC:Z
    :catchall_0
    move-exception v6

    .line 166
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 167
    throw v6
.end method


# virtual methods
.method public clearEntriesCalls()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "excludednumbers"

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->clearEntries(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public clearEntriesSMS()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "excludednumbersSMS"

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->clearEntries(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;
    .locals 3
    .parameter "c"

    .prologue
    .line 297
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    .local v1, content:Ljava/lang/StringBuffer;
    const-string v2, "v1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    const-string v2, "number"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, colID:I
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 304
    if-nez v2, :cond_0

    .line 315
    .end local v0           #colID:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 318
    return-object v1

    .line 314
    :catchall_0
    move-exception v2

    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 316
    throw v2
.end method

.method public createEntryCalls(Ljava/lang/String;)J
    .locals 2
    .parameter "number"

    .prologue
    .line 33
    const-string v0, "excludednumbers"

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->createEntry(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createEntrySMS(Ljava/lang/String;)J
    .locals 2
    .parameter "number"

    .prologue
    .line 38
    const-string v0, "excludednumbersSMS"

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->createEntry(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteEntryCalls(J)Z
    .locals 1
    .parameter "rowId"

    .prologue
    .line 66
    const-string v0, "excludednumbers"

    invoke-virtual {p0, p1, p2, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->deleteEntry(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteEntrySMS(J)Z
    .locals 1
    .parameter "rowId"

    .prologue
    .line 61
    const-string v0, "excludednumbersSMS"

    invoke-virtual {p0, p1, p2, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->deleteEntry(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fetchAllEntriesCalls()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 71
    const-string v0, "excludednumbers"

    invoke-direct {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntries(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllEntriesSMS()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 76
    const-string v0, "excludednumbersSMS"

    invoke-direct {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntries(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchNumber(J)Landroid/database/Cursor;
    .locals 1
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v0, "excludednumbers"

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchNumber(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchNumberSMS(J)Landroid/database/Cursor;
    .locals 1
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "excludednumbersSMS"

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchNumber(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getExcludePatterns(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    const-string v6, "calls"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 197
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesCalls()Landroid/database/Cursor;

    move-result-object v2

    .line 201
    .local v2, cursor:Landroid/database/Cursor;
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v3, entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v5

    .line 204
    .local v5, useCCC:Z
    iget-object v6, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v0

    .line 206
    .local v0, ccc:I
    const-string v6, "number"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, colID:I
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 215
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5, v0}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, number:Ljava/lang/String;
    iget-object v6, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lnitro/phonestats/settings/ExcludeList;->getPatternSymbol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 218
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 212
    if-nez v6, :cond_0

    .line 223
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 227
    return-object v3

    .line 199
    .end local v0           #ccc:I
    .end local v1           #colID:I
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5           #useCCC:Z
    :cond_3
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesSMS()Landroid/database/Cursor;

    move-result-object v2

    .restart local v2       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 222
    .restart local v0       #ccc:I
    .restart local v1       #colID:I
    .restart local v3       #entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5       #useCCC:Z
    :catchall_0
    move-exception v6

    .line 223
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 224
    throw v6
.end method

.method public getExcludePatternsCallsRegXp()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v1, patterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    const-string v2, "calls"

    invoke-virtual {p0, v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludePatterns(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    return-object v1

    .line 186
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    .local v0, numberPattern:Ljava/lang/String;
    iget-object v3, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnitro/phonestats/core/helper/StatsUtils;->numberPatternToRegExpPattern(Ljava/lang/String;Landroid/content/Context;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getExcludePatternsSMSRegXp()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v1, patterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    const-string v2, "sms"

    invoke-virtual {p0, v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludePatterns(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    return-object v1

    .line 176
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, numberPattern:Ljava/lang/String;
    iget-object v3, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnitro/phonestats/core/helper/StatsUtils;->numberPatternToRegExpPattern(Ljava/lang/String;Landroid/content/Context;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getExcludedNumbersCalls()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    const-string v0, "calls"

    invoke-direct {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludedNumbers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExcludedNumbersSMS(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    const-string v0, "sms"

    invoke-direct {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludedNumbers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "_id"

    return-object v0
.end method

.method public getSimpleExcludedNumbersCalls()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "calls"

    invoke-direct {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->getSimpleExcludedNumbers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleExcludedNumbersSMS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const-string v0, "sms"

    invoke-direct {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->getSimpleExcludedNumbers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public readContentStringCalls(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 371
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, lines:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "v1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 380
    .end local v0           #i:I
    :cond_0
    return-void

    .line 376
    .restart local v0       #i:I
    :cond_1
    aget-object v2, v1, v0

    .line 377
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    invoke-virtual {p0, v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->createEntryCalls(Ljava/lang/String;)J

    .line 374
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readContentStringSMS(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 383
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, lines:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "v1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 392
    .end local v0           #i:I
    :cond_0
    return-void

    .line 388
    .restart local v0       #i:I
    :cond_1
    aget-object v2, v1, v0

    .line 389
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    invoke-virtual {p0, v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->createEntrySMS(Ljava/lang/String;)J

    .line 386
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readFromFileCalls(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "temp"
    .parameter "path"

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, content:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 341
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v1, p1}, Lnitro/phonestats/core/helper/NitroUtils;->readFilePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->readContentStringCalls(Ljava/lang/String;)V

    .line 352
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v1, p1, p3}, Lnitro/phonestats/core/helper/NitroUtils;->readFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readFromFileSms(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "temp"
    .parameter "path"

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, content:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 359
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v1, p1}, Lnitro/phonestats/core/helper/NitroUtils;->readFilePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_0
    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->readContentStringSMS(Ljava/lang/String;)V

    .line 368
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-static {v1, p1, p3}, Lnitro/phonestats/core/helper/NitroUtils;->readFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveToFileCalls(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "filename"
    .parameter "temp"
    .parameter "path"

    .prologue
    .line 283
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesCalls()Landroid/database/Cursor;

    move-result-object v0

    .line 284
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 286
    .local v1, content:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 288
    iget-object v2, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lnitro/phonestats/core/helper/NitroUtils;->writeFilePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v2, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, p3}, Lnitro/phonestats/core/helper/NitroUtils;->writeFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveToFileSms(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "filename"
    .parameter "temp"
    .parameter "path"

    .prologue
    .line 322
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedNumbersManager;->fetchAllEntriesSMS()Landroid/database/Cursor;

    move-result-object v0

    .line 323
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedNumbersManager;->createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 325
    .local v1, content:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 327
    iget-object v2, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lnitro/phonestats/core/helper/NitroUtils;->writeFilePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v2, p0, Lnitro/phonestats/core/ExcludedNumbersManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, p3}, Lnitro/phonestats/core/helper/NitroUtils;->writeFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
