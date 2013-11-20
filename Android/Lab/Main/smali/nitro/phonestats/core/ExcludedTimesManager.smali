.class public Lnitro/phonestats/core/ExcludedTimesManager;
.super Lnitro/phonestats/core/SimpleRowManager;
.source "ExcludedTimesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;,
        Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
    }
.end annotation


# static fields
.field private static final EXPORT_FILE_VERSION:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "v1"

    sput-object v0, Lnitro/phonestats/core/ExcludedTimesManager;->EXPORT_FILE_VERSION:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lnitro/phonestats/core/SimpleRowManager;-><init>(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method private readContentString(Ljava/lang/String;)V
    .locals 7
    .parameter "content"

    .prologue
    const/4 v6, 0x0

    .line 272
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, lines:[Ljava/lang/String;
    aget-object v3, v2, v6

    sget-object v4, Lnitro/phonestats/core/ExcludedTimesManager;->EXPORT_FILE_VERSION:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 281
    .end local v1           #i:I
    :cond_0
    return-void

    .line 277
    .restart local v1       #i:I
    :cond_1
    aget-object v3, v2, v1

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, elements:[Ljava/lang/String;
    aget-object v3, v0, v6

    invoke-static {v3}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->dayStringToExcludeDay(Ljava/lang/String;)Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lnitro/phonestats/core/ExcludedTimesManager;->createEntry(Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;II)J

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearEntriesCalls()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "excludedtimes"

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedTimesManager;->clearEntries(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;
    .locals 5
    .parameter "c"

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v0, content:Ljava/lang/StringBuffer;
    sget-object v4, Lnitro/phonestats/core/ExcludedTimesManager;->EXPORT_FILE_VERSION:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 210
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const-string v4, "day"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, dayID:I
    const-string v4, "starttime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 216
    .local v3, starttimeID:I
    const-string v4, "endtime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 219
    .local v2, endtimeID:I
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 217
    if-nez v4, :cond_0

    .line 232
    .end local v1           #dayID:I
    .end local v2           #endtimeID:I
    .end local v3           #starttimeID:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 235
    return-object v0

    .line 231
    :catchall_0
    move-exception v4

    .line 232
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 233
    throw v4
.end method

.method public createEntry(Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;II)J
    .locals 4
    .parameter "day"
    .parameter "starttime"
    .parameter "endtime"

    .prologue
    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "day"

    invoke-virtual {p1}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "starttime"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "endtime"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedTimesManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "excludedtimes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public createEntry(Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;)J
    .locals 3
    .parameter "time"

    .prologue
    .line 149
    iget-object v0, p1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    iget v1, p1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->starttime:I

    iget v2, p1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->endtime:I

    invoke-virtual {p0, v0, v1, v2}, Lnitro/phonestats/core/ExcludedTimesManager;->createEntry(Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteEntryCalls(J)Z
    .locals 1
    .parameter "rowId"

    .prologue
    .line 162
    const-string v0, "excludedtimes"

    invoke-virtual {p0, p1, p2, v0}, Lnitro/phonestats/core/ExcludedTimesManager;->deleteEntry(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected fetchAllEntriesCalls()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lnitro/phonestats/core/ExcludedTimesManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "excludedtimes"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getExcludedTimes()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedTimesManager;->fetchAllEntriesCalls()Landroid/database/Cursor;

    move-result-object v0

    .line 181
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v5, entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;>;"
    const-string v8, "day"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, dayCol:I
    const-string v8, "starttime"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 185
    .local v7, starttimeCol:I
    const-string v8, "endtime"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 188
    .local v4, endtimeCol:I
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 192
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, dayString:Ljava/lang/String;
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 194
    .local v6, starttime:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 195
    .local v3, endtime:I
    new-instance v8, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;

    invoke-direct {v8, v2, v6, v3}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 190
    if-nez v8, :cond_0

    .line 200
    .end local v2           #dayString:Ljava/lang/String;
    .end local v3           #endtime:I
    .end local v6           #starttime:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    return-object v5

    .line 199
    :catchall_0
    move-exception v8

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    throw v8
.end method

.method protected getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "_id"

    return-object v0
.end method

.method public readFromFile(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "temp"
    .parameter "path"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, content:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 258
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedTimesManager;->ctx:Landroid/content/Context;

    invoke-static {v1, p1}, Lnitro/phonestats/core/helper/NitroUtils;->readFilePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    invoke-direct {p0, v0}, Lnitro/phonestats/core/ExcludedTimesManager;->readContentString(Ljava/lang/String;)V

    .line 268
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/ExcludedTimesManager;->ctx:Landroid/content/Context;

    invoke-static {v1, p1, p3}, Lnitro/phonestats/core/helper/NitroUtils;->readFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveToFile(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "filename"
    .parameter "temp"
    .parameter "path"

    .prologue
    .line 239
    invoke-virtual {p0}, Lnitro/phonestats/core/ExcludedTimesManager;->fetchAllEntriesCalls()Landroid/database/Cursor;

    move-result-object v0

    .line 240
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lnitro/phonestats/core/ExcludedTimesManager;->createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 242
    .local v1, content:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 244
    iget-object v2, p0, Lnitro/phonestats/core/ExcludedTimesManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lnitro/phonestats/core/helper/NitroUtils;->writeFilePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Lnitro/phonestats/core/ExcludedTimesManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, p3}, Lnitro/phonestats/core/helper/NitroUtils;->writeFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
