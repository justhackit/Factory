.class public Lnitro/phonestats/core/NumberCorrector;
.super Ljava/lang/Object;
.source "NumberCorrector.java"


# instance fields
.field private backupOriginal:Z

.field private ccc:I

.field private ctx:Landroid/content/Context;

.field mCountryCode:Ljava/lang/Integer;

.field private numberCallMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numberSMSMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useCCC:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "ctx"
    .parameter "countryCode"
    .parameter "backupOriginal"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->mCountryCode:Ljava/lang/Integer;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->numberCallMap:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->numberSMSMap:Ljava/util/Map;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/core/NumberCorrector;->backupOriginal:Z

    .line 33
    iput-object p1, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->mCountryCode:Ljava/lang/Integer;

    .line 35
    iput-boolean p3, p0, Lnitro/phonestats/core/NumberCorrector;->backupOriginal:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "ctx"
    .parameter "backupOriginal"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->mCountryCode:Ljava/lang/Integer;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->numberCallMap:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->numberSMSMap:Ljava/util/Map;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/core/NumberCorrector;->backupOriginal:Z

    .line 27
    iput-object p1, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    .line 28
    iput-boolean p2, p0, Lnitro/phonestats/core/NumberCorrector;->backupOriginal:Z

    .line 29
    return-void
.end method

.method private loadCallEntries()V
    .locals 8

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v5

    invoke-interface {v5}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT * FROM callevents"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 196
    iget-boolean v5, p0, Lnitro/phonestats/core/NumberCorrector;->backupOriginal:Z

    if-eqz v5, :cond_3

    const-string v5, "number"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 198
    .local v3, numberCol:I
    :goto_0
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, idCol:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, number:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 207
    .local v4, rowID:I
    iget-object v5, p0, Lnitro/phonestats/core/NumberCorrector;->numberCallMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 202
    if-nez v5, :cond_0

    .line 213
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #rowID:I
    :cond_1
    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_2
    return-void

    .line 196
    .end local v1           #idCol:I
    .end local v3           #numberCol:I
    :cond_3
    :try_start_1
    const-string v5, "numberOriginal"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v5

    .line 213
    if-eqz v0, :cond_4

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_4
    throw v5
.end method

.method private loadSMSEntries()V
    .locals 8

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v5

    invoke-interface {v5}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT * FROM smsevents"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    iget-boolean v5, p0, Lnitro/phonestats/core/NumberCorrector;->backupOriginal:Z

    if-eqz v5, :cond_3

    const-string v5, "number"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 168
    .local v3, numberCol:I
    :goto_0
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, idCol:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, number:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 177
    .local v4, rowID:I
    iget-object v5, p0, Lnitro/phonestats/core/NumberCorrector;->numberSMSMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 172
    if-nez v5, :cond_0

    .line 184
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #rowID:I
    :cond_1
    if-eqz v0, :cond_2

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_2
    return-void

    .line 165
    .end local v1           #idCol:I
    .end local v3           #numberCol:I
    :cond_3
    :try_start_1
    const-string v5, "numberOriginal"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v5

    .line 184
    if-eqz v0, :cond_4

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_4
    throw v5
.end method

.method private saveCallNumbers()V
    .locals 7

    .prologue
    .line 86
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 88
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->numberCallMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 103
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 106
    return-void

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    .local v1, pairs:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "number"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v5, p0, Lnitro/phonestats/core/NumberCorrector;->useCCC:Z

    iget v6, p0, Lnitro/phonestats/core/NumberCorrector;->ccc:I

    invoke-static {v3, v5, v6}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "callevents"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveSMSNumbers()V
    .locals 8

    .prologue
    .line 62
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 65
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->numberSMSMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 78
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    return-void

    .line 67
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, pairs:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "number"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v5, p0, Lnitro/phonestats/core/NumberCorrector;->useCCC:Z

    iget v6, p0, Lnitro/phonestats/core/NumberCorrector;->ccc:I

    invoke-static {v3, v5, v6}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v4

    invoke-interface {v4}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "smsevents"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private swappedSaveCallNumbers()V
    .locals 8

    .prologue
    .line 135
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 137
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->numberCallMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 153
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    return-void

    .line 139
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    .local v1, pairs:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "number"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v5, p0, Lnitro/phonestats/core/NumberCorrector;->useCCC:Z

    iget v6, p0, Lnitro/phonestats/core/NumberCorrector;->ccc:I

    invoke-static {v3, v5, v6}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v4, "numberOriginal"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v4

    invoke-interface {v4}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "callevents"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private swappedSaveSMSNumbers()V
    .locals 7

    .prologue
    .line 110
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 113
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->numberSMSMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 128
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    return-void

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, pairs:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "number"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v5, p0, Lnitro/phonestats/core/NumberCorrector;->useCCC:Z

    iget v6, p0, Lnitro/phonestats/core/NumberCorrector;->ccc:I

    invoke-static {v3, v5, v6}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v4, "numberOriginal"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "smsevents"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public correct()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lnitro/phonestats/core/NumberCorrector;->useCCC:Z

    .line 41
    iget-object v0, p0, Lnitro/phonestats/core/NumberCorrector;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnitro/phonestats/core/NumberCorrector;->ccc:I

    .line 43
    invoke-direct {p0}, Lnitro/phonestats/core/NumberCorrector;->loadCallEntries()V

    .line 44
    invoke-direct {p0}, Lnitro/phonestats/core/NumberCorrector;->loadSMSEntries()V

    .line 46
    iget-boolean v0, p0, Lnitro/phonestats/core/NumberCorrector;->backupOriginal:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lnitro/phonestats/core/NumberCorrector;->swappedSaveCallNumbers()V

    .line 49
    invoke-direct {p0}, Lnitro/phonestats/core/NumberCorrector;->swappedSaveSMSNumbers()V

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lnitro/phonestats/core/NumberCorrector;->saveCallNumbers()V

    .line 54
    invoke-direct {p0}, Lnitro/phonestats/core/NumberCorrector;->saveSMSNumbers()V

    goto :goto_0
.end method
