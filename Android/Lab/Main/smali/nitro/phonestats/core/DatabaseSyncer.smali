.class public Lnitro/phonestats/core/DatabaseSyncer;
.super Ljava/lang/Object;
.source "DatabaseSyncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;
    }
.end annotation


# static fields
.field private static final EXPORT_FILE_VERSION:Ljava/lang/Object; = null

.field private static final FAILED_CALL:Ljava/lang/String; = "Failed Call"

.field private static final INCOMING_CALL:Ljava/lang/String; = "Incoming Call"

.field private static final INCOMING_SMS:Ljava/lang/String; = "Incoming SMS"

.field private static final MISSED_CALL:Ljava/lang/String; = "Missed Call"

.field private static final OUTGOING_CALL:Ljava/lang/String; = "Outgoing Call"

.field private static final OUTGOING_SMS:Ljava/lang/String; = "Outgoing SMS"

.field static final SMSATTRIBUTES_BODY:Ljava/lang/String; = "body"

.field static final SMSATTRIBUTES_DATE:Ljava/lang/String; = "date"

.field static final SMSATTRIBUTES_ID:Ljava/lang/String; = "_id"

.field static final SMSATTRIBUTES_INDEX_ADDRESS:I = 0x2

.field static final SMSATTRIBUTES_INDEX_BODY:I = 0xb

.field static final SMSATTRIBUTES_INDEX_DATE:I = 0x4

.field static final SMSATTRIBUTES_INDEX_ID:I = 0x0

.field static final SMSATTRIBUTES_INDEX_LOCKED:I = 0xd

.field static final SMSATTRIBUTES_INDEX_PERSON:I = 0x3

.field static final SMSATTRIBUTES_INDEX_PROTOCOL:I = 0x5

.field static final SMSATTRIBUTES_INDEX_READ:I = 0x6

.field static final SMSATTRIBUTES_INDEX_REPLY:I = 0x9

.field static final SMSATTRIBUTES_INDEX_SERVICECENTER:I = 0xc

.field static final SMSATTRIBUTES_INDEX_STATUS:I = 0x7

.field static final SMSATTRIBUTES_INDEX_SUBJECT:I = 0xa

.field static final SMSATTRIBUTES_INDEX_THREADID:I = 0x1

.field static final SMSATTRIBUTES_INDEX_TYPE:I = 0x8

.field static final SMSATTRIBUTES_LOCKED:Ljava/lang/String; = "locked"

.field static final SMSATTRIBUTES_PERSON:Ljava/lang/String; = "person"

.field static final SMSATTRIBUTES_PROTOCOL:Ljava/lang/String; = "protocol"

.field static final SMSATTRIBUTES_READ:Ljava/lang/String; = "read"

.field static final SMSATTRIBUTES_REPLY:Ljava/lang/String; = "reply_path_present"

.field static final SMSATTRIBUTES_SENDERNO:Ljava/lang/String; = "address"

.field static final SMSATTRIBUTES_SERVICECENTER:Ljava/lang/String; = "service_center"

.field static final SMSATTRIBUTES_STATUS:Ljava/lang/String; = "status"

.field static final SMSATTRIBUTES_SUBJECT:Ljava/lang/String; = "subject"

.field static final SMSATTRIBUTES_THREADID:Ljava/lang/String; = "thread_id"

.field static final SMSATTRIBUTES_TYPE:Ljava/lang/String; = "type"

.field public static final SMS_URI_ALL:Ljava/lang/String; = "content://sms/"

.field public static final SMS_URI_DRAFT:Ljava/lang/String; = "content://sms/draft"

.field public static final SMS_URI_FAILED:Ljava/lang/String; = "content://sms/failed"

.field public static final SMS_URI_INBOX:Ljava/lang/String; = "content://sms/inbox"

.field public static final SMS_URI_OUTBOX:Ljava/lang/String; = "content://sms/outbox"

.field public static final SMS_URI_QUEUED:Ljava/lang/String; = "content://sms/queued"

.field public static final SMS_URI_SENT:Ljava/lang/String; = "content://sms/sent"

.field private static final TRANSACTION_BUFFER:I = 0xfa


# instance fields
.field private ctx:Landroid/content/Context;

.field private latestCallEvent:J

.field private latestSMSEvent:J

.field private lock:Z

.field private transactBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "v1"

    sput-object v0, Lnitro/phonestats/core/DatabaseSyncer;->EXPORT_FILE_VERSION:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const-wide/16 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestCallEvent:J

    .line 37
    iput-wide v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestSMSEvent:J

    .line 101
    iput-object p1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    .line 103
    return-void
.end method

.method private flushTransactionBufferIfNeeded()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    rem-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 143
    iget-object v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transaction (flush) Ended: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method private getCallType(II)Ljava/lang/String;
    .locals 1
    .parameter "duration"
    .parameter "callTypeInt"

    .prologue
    .line 619
    const-string v0, ""

    .line 620
    .local v0, callType:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 642
    :goto_0
    return-object v0

    .line 623
    :pswitch_0
    const-string v0, "Incoming Call"

    .line 624
    goto :goto_0

    .line 628
    :pswitch_1
    if-nez p1, :cond_0

    .line 630
    const-string v0, "Failed Call"

    goto :goto_0

    .line 633
    :cond_0
    const-string v0, "Outgoing Call"

    .line 635
    goto :goto_0

    .line 638
    :pswitch_2
    const-string v0, "Missed Call"

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private insertCall(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z
    .locals 11
    .parameter "callType"
    .parameter "id"
    .parameter "time"
    .parameter "number"
    .parameter "numberOriginal"
    .parameter "duration"
    .parameter "noIDCheck"
    .parameter "transaction"
    .parameter "checkMode"

    .prologue
    .line 431
    sget-object v1, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->ID_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v0, p10

    if-ne v0, v1, :cond_8

    .line 433
    const/4 v9, 0x0

    .line 437
    .local v9, c:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 439
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 440
    const-string v2, "callevents"

    .line 441
    const/4 v3, 0x0

    .line 442
    const-string v4, "nativeID=? AND time=?"

    .line 444
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "c"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 439
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 449
    :cond_0
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 452
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 453
    const/4 v1, 0x0

    .line 565
    .end local v9           #c:Landroid/database/Cursor;
    .end local p2
    :goto_0
    return v1

    .line 448
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local p2
    :catchall_0
    move-exception v1

    .line 449
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 452
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 453
    const/4 v1, 0x0

    goto :goto_0

    .line 456
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_2
    throw v1

    .line 456
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    const-string v1, "length"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string v1, "number"

    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "numberOriginal"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    if-eqz p6, :cond_5

    .line 468
    const-string v1, "numberOriginal"

    move-object/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_5
    if-eqz p2, :cond_6

    const-string v1, "nativeID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_6
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 472
    const-string v2, "callevents"

    const/4 v3, 0x0

    .line 471
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert call event -> id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .end local p2
    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 475
    .restart local p2
    :cond_7
    const-string p2, "null"

    goto :goto_1

    .line 480
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_8
    sget-object v1, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->DATE_NUMBER_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v0, p10

    if-ne v0, v1, :cond_10

    .line 482
    const/4 v9, 0x0

    .line 486
    .restart local v9       #c:Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 487
    const-string v2, "callevents"

    .line 488
    const/4 v3, 0x0

    .line 489
    const-string v4, "numberOriginal=? AND time=?"

    .line 491
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p6, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 486
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 496
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 499
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 500
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 495
    :catchall_1
    move-exception v1

    .line 496
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 499
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 500
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 503
    :cond_9
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_a
    throw v1

    .line 503
    :cond_b
    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_c
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 511
    const-string v1, "length"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const-string v1, "number"

    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v1, "numberOriginal"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-eqz p6, :cond_d

    .line 515
    const-string v1, "numberOriginal"

    move-object/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_d
    if-eqz p2, :cond_e

    const-string v1, "nativeID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_e
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 519
    const-string v2, "callevents"

    const/4 v3, 0x0

    .line 518
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert call event -> id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_f

    .end local p2
    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 524
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 522
    .restart local p2
    :cond_f
    const-string p2, "null"

    goto :goto_2

    .line 527
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_10
    sget-object v1, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->NO_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v0, p10

    if-ne v0, v1, :cond_14

    .line 530
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v1, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 533
    const-string v1, "length"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v1, "number"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "nativeID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-nez p9, :cond_12

    .line 539
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 540
    const-string v2, "callevents"

    const/4 v3, 0x0

    .line 539
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 561
    :cond_11
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert call event -> id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 543
    :cond_12
    iget v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    rem-int/lit16 v1, v1, 0xfa

    if-nez v1, :cond_13

    .line 544
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 546
    :cond_13
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 547
    const-string v2, "callevents"

    const/4 v3, 0x0

    .line 546
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 549
    iget v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    .line 551
    iget v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    rem-int/lit16 v1, v1, 0xfa

    if-nez v1, :cond_11

    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 554
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 555
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transaction Ended: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 565
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private insertSMS(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z
    .locals 11
    .parameter "number"
    .parameter "numberOriginal"
    .parameter "time"
    .parameter "id"
    .parameter "length"
    .parameter "incoming"
    .parameter "noIDCheck"
    .parameter "transaction"
    .parameter "checkMode"

    .prologue
    .line 288
    sget-object v1, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->ID_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v0, p10

    if-ne v0, v1, :cond_8

    .line 290
    const/4 v9, 0x0

    .line 293
    .local v9, c:Landroid/database/Cursor;
    if-eqz p5, :cond_0

    .line 295
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 296
    const-string v2, "smsevents"

    .line 297
    const/4 v3, 0x0

    .line 298
    const-string v4, "nativeID=? AND time=?"

    .line 300
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "m"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 295
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 304
    :cond_0
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 308
    const/4 v1, 0x0

    .line 422
    .end local v9           #c:Landroid/database/Cursor;
    .end local p5
    :goto_0
    return v1

    .line 303
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local p5
    :catchall_0
    move-exception v1

    .line 304
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 308
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_2
    throw v1

    .line 311
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 316
    .local v10, values:Landroid/content/ContentValues;
    const-string v2, "type"

    if-eqz p7, :cond_6

    const-string v1, "Incoming SMS"

    :goto_1
    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v1, "length"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v1, "number"

    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "numberOriginal"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-eqz p5, :cond_5

    const-string v1, "nativeID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_5
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 326
    const-string v2, "smsevents"

    const/4 v3, 0x0

    .line 325
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert SMS event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_7

    .end local p5
    :goto_2
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 317
    .restart local p5
    :cond_6
    const-string v1, "Outgoing SMS"

    goto/16 :goto_1

    .line 330
    :cond_7
    const-string p5, "null"

    goto :goto_2

    .line 336
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_8
    sget-object v1, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->DATE_NUMBER_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v0, p10

    if-ne v0, v1, :cond_10

    .line 338
    const/4 v9, 0x0

    .line 341
    .restart local v9       #c:Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 342
    const-string v2, "smsevents"

    .line 343
    const/4 v3, 0x0

    .line 344
    const-string v4, "numberOriginal=? AND time=?"

    .line 346
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 341
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 350
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALREADYIN  id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 353
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 354
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 349
    :catchall_1
    move-exception v1

    .line 350
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALREADYIN  id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 353
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 354
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 357
    :cond_9
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_a
    throw v1

    .line 357
    :cond_b
    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_c
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v2, "type"

    if-eqz p7, :cond_e

    const-string v1, "Incoming SMS"

    :goto_3
    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    const-string v1, "length"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v1, "number"

    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "numberOriginal"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    if-eqz p5, :cond_d

    const-string v1, "nativeID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_d
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 371
    const-string v2, "smsevents"

    const/4 v3, 0x0

    .line 370
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert SMS event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_f

    .end local p5
    :goto_4
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 362
    .restart local p5
    :cond_e
    const-string v1, "Outgoing SMS"

    goto/16 :goto_3

    .line 375
    :cond_f
    const-string p5, "null"

    goto :goto_4

    .line 379
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_10
    sget-object v1, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->NO_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v0, p10

    if-ne v0, v1, :cond_15

    .line 384
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v2, "type"

    if-eqz p7, :cond_12

    const-string v1, "Incoming SMS"

    :goto_5
    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    const-string v1, "length"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v1, "number"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "nativeID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-nez p9, :cond_13

    .line 394
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 395
    const-string v2, "smsevents"

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 417
    :cond_11
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert SMS event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 386
    :cond_12
    const-string v1, "Outgoing SMS"

    goto :goto_5

    .line 401
    :cond_13
    iget v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    rem-int/lit16 v1, v1, 0xfa

    if-nez v1, :cond_14

    .line 402
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 404
    :cond_14
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 405
    const-string v2, "smsevents"

    const/4 v3, 0x0

    .line 404
    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 407
    iget v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    .line 409
    iget v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    rem-int/lit16 v1, v1, 0xfa

    if-nez v1, :cond_11

    .line 411
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 412
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transaction Ended: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->transactBuffer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 422
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private readContentStringCalls(Ljava/lang/String;)V
    .locals 16
    .parameter "content"

    .prologue
    .line 804
    const-string v1, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 805
    .local v14, lines:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v14, v1

    sget-object v3, Lnitro/phonestats/core/DatabaseSyncer;->EXPORT_FILE_VERSION:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    const/4 v13, 0x1

    .local v13, i:I
    :goto_0
    array-length v1, v14

    if-lt v13, v1, :cond_1

    .line 818
    .end local v13           #i:I
    :cond_0
    return-void

    .line 809
    .restart local v13       #i:I
    :cond_1
    aget-object v1, v14, v13

    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 810
    .local v12, elements:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v6, v12, v1

    .line 811
    .local v6, number:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v7, v12, v1

    .line 812
    .local v7, numberOriginal:Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 813
    .local v15, time:Ljava/lang/Long;
    const/4 v1, 0x3

    aget-object v2, v12, v1

    .line 814
    .local v2, type:Ljava/lang/String;
    const/4 v1, 0x4

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 815
    .local v8, length:I
    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v11, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->DATE_NUMBER_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lnitro/phonestats/core/DatabaseSyncer;->insertCall(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z

    .line 807
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method private readContentStringSMS(Ljava/lang/String;)V
    .locals 17
    .parameter "content"

    .prologue
    .line 787
    const-string v1, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 788
    .local v14, lines:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v14, v1

    sget-object v4, Lnitro/phonestats/core/DatabaseSyncer;->EXPORT_FILE_VERSION:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    const/4 v13, 0x1

    .local v13, i:I
    :goto_0
    array-length v1, v14

    if-lt v13, v1, :cond_1

    .line 801
    .end local v13           #i:I
    :cond_0
    return-void

    .line 792
    .restart local v13       #i:I
    :cond_1
    aget-object v1, v14, v13

    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 793
    .local v12, elements:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v12, v1

    .line 794
    .local v2, number:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v3, v12, v1

    .line 795
    .local v3, numberOriginal:Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 796
    .local v15, time:Ljava/lang/Long;
    const/4 v1, 0x3

    aget-object v16, v12, v1

    .line 797
    .local v16, type:Ljava/lang/String;
    const/4 v1, 0x4

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 798
    .local v7, length:I
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v1, "Incoming SMS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v11, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->DATE_NUMBER_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lnitro/phonestats/core/DatabaseSyncer;->insertSMS(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z

    .line 790
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method private searchLatestCallEvent()J
    .locals 4

    .prologue
    .line 191
    const-string v1, "SELECT MAX(time) FROM callevents"

    .line 193
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-interface {v2}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 196
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    :goto_0
    return-wide v2

    .line 201
    :catchall_0
    move-exception v2

    .line 202
    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_1
    throw v2

    .line 202
    :cond_2
    if-eqz v0, :cond_3

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private searchLatestSMSEvent()J
    .locals 4

    .prologue
    .line 167
    const-string v1, "SELECT MAX(time) FROM smsevents"

    .line 169
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-interface {v2}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_0
    :goto_0
    return-wide v2

    .line 176
    :catchall_0
    move-exception v2

    .line 177
    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1
    throw v2

    .line 177
    :cond_2
    if-eqz v0, :cond_3

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private syncMMS(ZZZ)I
    .locals 17
    .parameter "incoming"
    .parameter "fullSync"
    .parameter "transaction"

    .prologue
    .line 649
    const/16 v16, 0x0

    .line 650
    .local v16, newEntries:I
    const-string v3, "content://mms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 651
    .local v2, allMMS:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 652
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 654
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 658
    const-string v3, "date"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 659
    .local v10, dateColumn:I
    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 660
    .local v13, idCol:I
    const-string v3, "m_type"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 663
    .local v14, idType:I
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 664
    .local v8, cols:I
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_3

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowcount MMS: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 673
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 678
    :cond_0
    new-instance v9, Ljava/util/Date;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 679
    .local v9, date:Ljava/util/Date;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 680
    .local v12, id:Ljava/lang/String;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 681
    .local v11, direction:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mms: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 685
    add-int/lit8 v16, v16, 0x1

    .line 687
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 675
    if-nez v3, :cond_0

    .line 690
    .end local v9           #date:Ljava/util/Date;
    .end local v11           #direction:I
    .end local v12           #id:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 691
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 695
    .end local v8           #cols:I
    .end local v10           #dateColumn:I
    .end local v13           #idCol:I
    .end local v14           #idType:I
    :cond_2
    return v16

    .line 664
    .restart local v8       #cols:I
    .restart local v10       #dateColumn:I
    .restart local v13       #idCol:I
    .restart local v14       #idType:I
    :cond_3
    aget-object v15, v4, v3

    .line 666
    .local v15, name:Ljava/lang/String;
    invoke-static {v15}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private syncSMS(ZZZ)I
    .locals 22
    .parameter "incoming"
    .parameter "fullSync"
    .parameter "transaction"

    .prologue
    .line 243
    const/16 v21, 0x0

    .line 244
    .local v21, newEntries:I
    if-eqz p1, :cond_4

    const-string v4, "content://sms/inbox"

    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 246
    .local v3, allSMS:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 247
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "date>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v7, v0, Lnitro/phonestats/core/DatabaseSyncer;->latestSMSEvent:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 249
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_3

    .line 251
    const-string v4, "address"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 252
    .local v15, adressColumn:I
    const-string v4, "date"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 253
    .local v19, dateColumn:I
    const-string v4, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 254
    .local v20, idCol:I
    const-string v4, "body"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 256
    .local v16, bodyColumn:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowcount SMS native incoming="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 257
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 259
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    :cond_0
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, number:Ljava/lang/String;
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 265
    .local v18, date:Ljava/util/Date;
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, id:Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    .line 268
    .local v10, length:I
    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 269
    if-eqz p2, :cond_5

    sget-object v14, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->NO_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    :goto_1
    move-object/from16 v4, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 268
    invoke-direct/range {v4 .. v14}, Lnitro/phonestats/core/DatabaseSyncer;->insertSMS(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    add-int/lit8 v21, v21, 0x1

    .line 272
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 261
    if-nez v4, :cond_0

    .line 275
    .end local v5           #number:Ljava/lang/String;
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #length:I
    .end local v18           #date:Ljava/util/Date;
    :cond_2
    if-eqz v17, :cond_3

    .line 276
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v15           #adressColumn:I
    .end local v16           #bodyColumn:I
    .end local v19           #dateColumn:I
    .end local v20           #idCol:I
    :cond_3
    return v21

    .line 245
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #allSMS:Landroid/net/Uri;
    .end local v17           #c:Landroid/database/Cursor;
    :cond_4
    const-string v4, "content://sms/sent"

    goto/16 :goto_0

    .line 269
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #allSMS:Landroid/net/Uri;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v9       #id:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v15       #adressColumn:I
    .restart local v16       #bodyColumn:I
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v18       #date:Ljava/util/Date;
    .restart local v19       #dateColumn:I
    .restart local v20       #idCol:I
    :cond_5
    sget-object v14, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->ID_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    goto :goto_1
.end method


# virtual methods
.method public backupCallEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "path"

    .prologue
    .line 713
    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-interface {v2}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 714
    const-string v3, "SELECT * FROM callevents"

    const/4 v4, 0x0

    .line 713
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 717
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lnitro/phonestats/core/DatabaseSyncer;->createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 719
    .local v1, content:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, p2}, Lnitro/phonestats/core/helper/NitroUtils;->writeFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public backupSMSEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "path"

    .prologue
    .line 724
    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-interface {v2}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 725
    const-string v3, "SELECT * FROM smsevents"

    const/4 v4, 0x0

    .line 724
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 728
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lnitro/phonestats/core/DatabaseSyncer;->createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 730
    .local v1, content:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, p2}, Lnitro/phonestats/core/helper/NitroUtils;->writeFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public correctMinutes(I)V
    .locals 11
    .parameter "addMinutes"

    .prologue
    const/4 v8, 0x0

    .line 700
    const-string v1, "Outgoing Call"

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v5, "-2"

    const-string v6, "-2"

    mul-int/lit8 v7, p1, 0x3c

    sget-object v10, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->NO_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object v0, p0

    move v9, v8

    invoke-direct/range {v0 .. v10}, Lnitro/phonestats/core/DatabaseSyncer;->insertCall(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z

    .line 702
    return-void
.end method

.method public correctSMS(I)V
    .locals 12
    .parameter "addSMS"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 706
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 707
    .local v3, time:J
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-lt v11, p1, :cond_0

    .line 709
    invoke-direct {p0}, Lnitro/phonestats/core/DatabaseSyncer;->flushTransactionBufferIfNeeded()V

    .line 710
    return-void

    .line 708
    :cond_0
    const-string v1, "-2"

    const-string v2, "-2"

    const/4 v5, 0x0

    sget-object v10, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->NO_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    move-object v0, p0

    move v8, v7

    move v9, v6

    invoke-direct/range {v0 .. v10}, Lnitro/phonestats/core/DatabaseSyncer;->insertSMS(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z

    .line 707
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public createContentString(Landroid/database/Cursor;)Ljava/lang/StringBuffer;
    .locals 7
    .parameter "c"

    .prologue
    .line 735
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 736
    .local v0, content:Ljava/lang/StringBuffer;
    sget-object v6, Lnitro/phonestats/core/DatabaseSyncer;->EXPORT_FILE_VERSION:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 737
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 741
    const-string v6, "number"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 742
    .local v2, numberID:I
    const-string v6, "type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 743
    .local v5, typeID:I
    const-string v6, "numberOriginal"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 744
    .local v3, numberOriginalID:I
    const-string v6, "time"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 745
    .local v4, timeID:I
    const-string v6, "length"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 748
    .local v1, lengthID:I
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 749
    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 746
    if-nez v6, :cond_0

    .line 765
    .end local v1           #lengthID:I
    .end local v2           #numberID:I
    .end local v3           #numberOriginalID:I
    .end local v4           #timeID:I
    .end local v5           #typeID:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 767
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 768
    return-object v0

    .line 764
    :catchall_0
    move-exception v6

    .line 765
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 766
    throw v6
.end method

.method public exportEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "filename"
    .parameter "path"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 823
    iget-object v7, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v7

    invoke-interface {v7}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 824
    const-string v8, "SELECT * FROM callevents UNION Select * FROM smsevents ORDER BY time DESC"

    const/4 v9, 0x0

    .line 823
    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 830
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 831
    .local v1, content:Ljava/lang/StringBuffer;
    const-string v7, "number;time;type;length"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 836
    const-string v7, "number"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 837
    .local v3, numberID:I
    const-string v7, "type"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 838
    .local v6, typeID:I
    const-string v7, "time"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 839
    .local v4, timeID:I
    const-string v7, "length"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 842
    .local v2, lengthID:I
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 844
    new-instance v7, Ljava/util/Date;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 847
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 849
    const-string v7, "Call"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 840
    if-nez v7, :cond_0

    .line 858
    .end local v2           #lengthID:I
    .end local v3           #numberID:I
    .end local v4           #timeID:I
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #typeID:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 864
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 866
    iget-object v7, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8, p2}, Lnitro/phonestats/core/helper/NitroUtils;->writeFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void

    .line 849
    .restart local v2       #lengthID:I
    .restart local v3       #numberID:I
    .restart local v4       #timeID:I
    .restart local v5       #type:Ljava/lang/String;
    .restart local v6       #typeID:I
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " chars"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 857
    .end local v2           #lengthID:I
    .end local v3           #numberID:I
    .end local v4           #timeID:I
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #typeID:I
    :catchall_0
    move-exception v7

    .line 858
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 859
    throw v7
.end method

.method public needsFullSync()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, count:I
    iget-object v3, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 223
    const-string v4, "SELECT * FROM callevents"

    .line 222
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 224
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 228
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 230
    iget-object v3, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 231
    const-string v4, "SELECT * FROM smsevents"

    .line 230
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 232
    .local v1, c2:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 236
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 238
    if-nez v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public refreshLatestEventTime()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latestCallEvent before: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestCallEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latestSMSEvent before: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestSMSEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lnitro/phonestats/core/DatabaseSyncer;->searchLatestCallEvent()J

    move-result-wide v0

    iput-wide v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestCallEvent:J

    .line 156
    invoke-direct {p0}, Lnitro/phonestats/core/DatabaseSyncer;->searchLatestSMSEvent()J

    move-result-wide v0

    iput-wide v0, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestSMSEvent:J

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latestCallEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestCallEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latestSMSEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestSMSEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public restoreCallEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "path"

    .prologue
    .line 780
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lnitro/phonestats/core/helper/NitroUtils;->readFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, v0}, Lnitro/phonestats/core/DatabaseSyncer;->readContentStringCalls(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public restoreSMSEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "path"

    .prologue
    .line 772
    iget-object v1, p0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lnitro/phonestats/core/helper/NitroUtils;->readFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, v0}, Lnitro/phonestats/core/DatabaseSyncer;->readContentStringSMS(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public syncCalls(ZZ)I
    .locals 26
    .parameter "fullSync"
    .parameter "transaction"

    .prologue
    .line 570
    const/16 v23, 0x0

    .line 571
    .local v23, newEntries:I
    const-string v2, "content://call_log/calls"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 572
    .local v3, allCalls:Landroid/net/Uri;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "name"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "duration"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "number"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "type"

    aput-object v5, v4, v2

    .line 574
    .local v4, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/DatabaseSyncer;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "date>"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lnitro/phonestats/core/DatabaseSyncer;->latestCallEvent:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 575
    const/4 v7, 0x0

    .line 574
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 577
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_3

    .line 580
    const-string v2, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 581
    .local v21, durationCol:I
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 582
    .local v22, idCol:I
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 583
    .local v24, numberCol:I
    const-string v2, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 584
    .local v19, dateCol:I
    const-string v2, "type"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 586
    .local v25, typeCol:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "rowcount calls native "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 588
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    :cond_0
    const-string v6, ""

    .line 593
    .local v6, callType:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 594
    .local v20, duration:Ljava/lang/Integer;
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, id:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 596
    .local v10, number:Ljava/lang/String;
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 597
    .local v18, date:Ljava/util/Date;
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 598
    .local v17, callTypeInt:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lnitro/phonestats/core/DatabaseSyncer;->getCallType(II)Ljava/lang/String;

    move-result-object v6

    .line 600
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 601
    if-eqz p1, :cond_4

    sget-object v15, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->NO_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    :goto_0
    move-object/from16 v5, p0

    move/from16 v13, p1

    move/from16 v14, p2

    .line 600
    invoke-direct/range {v5 .. v15}, Lnitro/phonestats/core/DatabaseSyncer;->insertCall(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZLnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    add-int/lit8 v23, v23, 0x1

    .line 604
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 590
    if-nez v2, :cond_0

    .line 608
    .end local v6           #callType:Ljava/lang/String;
    .end local v7           #id:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    .end local v17           #callTypeInt:I
    .end local v18           #date:Ljava/util/Date;
    .end local v20           #duration:Ljava/lang/Integer;
    :cond_2
    if-eqz v16, :cond_3

    .line 609
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 614
    .end local v19           #dateCol:I
    .end local v21           #durationCol:I
    .end local v22           #idCol:I
    .end local v24           #numberCol:I
    .end local v25           #typeCol:I
    :cond_3
    return v23

    .line 601
    .restart local v6       #callType:Ljava/lang/String;
    .restart local v7       #id:Ljava/lang/String;
    .restart local v10       #number:Ljava/lang/String;
    .restart local v17       #callTypeInt:I
    .restart local v18       #date:Ljava/util/Date;
    .restart local v19       #dateCol:I
    .restart local v20       #duration:Ljava/lang/Integer;
    .restart local v21       #durationCol:I
    .restart local v22       #idCol:I
    .restart local v24       #numberCol:I
    .restart local v25       #typeCol:I
    :cond_4
    sget-object v15, Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;->ID_CHECK:Lnitro/phonestats/core/DatabaseSyncer$DuplicateCheckMode;

    goto :goto_0
.end method

.method public syncData()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 107
    const/4 v0, 0x0

    .line 110
    .local v0, newEntries:I
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, v2, v2, v2}, Lnitro/phonestats/core/DatabaseSyncer;->syncMMS(ZZZ)I

    .line 113
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/core/DatabaseSyncer;->needsFullSync()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iput-wide v4, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestCallEvent:J

    .line 116
    iput-wide v4, p0, Lnitro/phonestats/core/DatabaseSyncer;->latestSMSEvent:J

    .line 117
    invoke-virtual {p0, v2, v2}, Lnitro/phonestats/core/DatabaseSyncer;->syncCalls(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    invoke-virtual {p0, v2, v2}, Lnitro/phonestats/core/DatabaseSyncer;->syncIncomingSMS(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    invoke-virtual {p0, v2, v2}, Lnitro/phonestats/core/DatabaseSyncer;->syncOutgoingSMS(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    const/4 v0, -0x1

    .line 122
    invoke-direct {p0}, Lnitro/phonestats/core/DatabaseSyncer;->flushTransactionBufferIfNeeded()V

    .line 133
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lnitro/phonestats/core/DatabaseSyncer;->refreshLatestEventTime()V

    .line 126
    invoke-virtual {p0, v3, v3}, Lnitro/phonestats/core/DatabaseSyncer;->syncCalls(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    invoke-virtual {p0, v3, v3}, Lnitro/phonestats/core/DatabaseSyncer;->syncIncomingSMS(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    invoke-virtual {p0, v3, v3}, Lnitro/phonestats/core/DatabaseSyncer;->syncOutgoingSMS(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public syncIncomingSMS(ZZ)I
    .locals 1
    .parameter "fullSync"
    .parameter "transaction"

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lnitro/phonestats/core/DatabaseSyncer;->syncSMS(ZZZ)I

    move-result v0

    return v0
.end method

.method public syncOutgoingSMS(ZZ)I
    .locals 1
    .parameter "fullSync"
    .parameter "transaction"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lnitro/phonestats/core/DatabaseSyncer;->syncSMS(ZZZ)I

    move-result v0

    return v0
.end method
