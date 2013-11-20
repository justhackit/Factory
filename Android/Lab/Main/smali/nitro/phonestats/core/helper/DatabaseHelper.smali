.class public Lnitro/phonestats/core/helper/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final ALTER1_CALL_EVENTS:Ljava/lang/String; = "ALTER TABLE callevents ADD COLUMN numberOriginal varchar(200)"

.field private static final ALTER1_SMS_EVENTS:Ljava/lang/String; = "ALTER TABLE smsevents ADD COLUMN numberOriginal varchar(200)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "data"

.field private static final DATABASE_VERSION:I = 0x7

.field public static final EVENTS_KEY_LENGTH:Ljava/lang/String; = "length"

.field public static final EVENTS_KEY_NATIVEID:Ljava/lang/String; = "nativeID"

.field public static final EVENTS_KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final EVENTS_KEY_NUMBER_ORIGINAL:Ljava/lang/String; = "numberOriginal"

.field public static final EVENTS_KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final EVENTS_KEY_TIME:Ljava/lang/String; = "time"

.field public static final EVENTS_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final EXCLUDEDNUMBERS_KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final EXCLUDEDNUMBERS_KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final EXCLUDEDTIMES_KEY_DAY:Ljava/lang/String; = "day"

.field public static final EXCLUDEDTIMES_KEY_ENDTIME:Ljava/lang/String; = "endtime"

.field public static final EXCLUDEDTIMES_KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final EXCLUDEDTIMES_KEY_STARTTIME:Ljava/lang/String; = "starttime"

.field public static final TABLE_CALL_EVENTS:Ljava/lang/String; = "callevents"

.field private static final TABLE_CALL_EVENTS_CREATE:Ljava/lang/String; = "create table callevents (_id integer primary key autoincrement, type varchar(20) not null,  time long not null,length integer ,number varchar(200),numberOriginal varchar(200),nativeID varchar(20))"

.field public static final TABLE_EXCLUDEDNUMBERS:Ljava/lang/String; = "excludednumbers"

.field public static final TABLE_EXCLUDEDNUMBERSSMS:Ljava/lang/String; = "excludednumbersSMS"

.field private static final TABLE_EXCLUDEDNUMBERSSMS_CREATE:Ljava/lang/String; = "create table excludednumbersSMS (_id integer primary key autoincrement, number text not null);"

.field private static final TABLE_EXCLUDEDNUMBERS_CREATE:Ljava/lang/String; = "create table excludednumbers (_id integer primary key autoincrement, number text not null);"

.field public static final TABLE_EXCLUDEDTIMES:Ljava/lang/String; = "excludedtimes"

.field private static final TABLE_EXCLUDEDTIMES_CREATE:Ljava/lang/String; = "create table excludedtimes (_id integer primary key autoincrement, day string not null, starttime int not null, endtime int  not null);"

.field public static final TABLE_SMS_EVENTS:Ljava/lang/String; = "smsevents"

.field private static final TABLE_SMS_EVENTS_CREATE:Ljava/lang/String; = "create table smsevents (_id integer primary key autoincrement, type varchar(20) not null,  time long not null,length integer ,number varchar(200),numberOriginal varchar(200),nativeID varchar(20))"

.field public static final TABLE_TRAFFIC_EVENTS:Ljava/lang/String; = "trafficevents"

.field private static final TABLE_TRAFFIC_EVENTS_CREATE:Ljava/lang/String; = "create table trafficevents (_id integer primary key autoincrement, type varchar(10) not null, bytesIn long  ,bytesOut long ,period varchar(15) not null ,timeBegin not null,timeEnd not null)"

.field public static final TRAFFIC_EVENTS_KEY_BYTESIN:Ljava/lang/String; = "bytesIn"

.field public static final TRAFFIC_EVENTS_KEY_BYTESOUT:Ljava/lang/String; = "bytesOut"

.field public static final TRAFFIC_EVENTS_KEY_PERIOD:Ljava/lang/String; = "period"

.field public static final TRAFFIC_EVENTS_KEY_TIMEBEGIN:Ljava/lang/String; = "timeBegin"

.field public static final TRAFFIC_EVENTS_KEY_TIMEEND:Ljava/lang/String; = "timeEnd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 89
    const-string v0, "data"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 95
    const-string v0, "create table callevents (_id integer primary key autoincrement, type varchar(20) not null,  time long not null,length integer ,number varchar(200),numberOriginal varchar(200),nativeID varchar(20))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "create table smsevents (_id integer primary key autoincrement, type varchar(20) not null,  time long not null,length integer ,number varchar(200),numberOriginal varchar(200),nativeID varchar(20))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "create table trafficevents (_id integer primary key autoincrement, type varchar(10) not null, bytesIn long  ,bytesOut long ,period varchar(15) not null ,timeBegin not null,timeEnd not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "create table excludednumbers (_id integer primary key autoincrement, number text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v0, "create table excludednumbersSMS (_id integer primary key autoincrement, number text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v0, "create table excludedtimes (_id integer primary key autoincrement, day string not null, starttime int not null, endtime int  not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 106
    const/4 v0, 0x7

    if-ne p3, v0, :cond_2

    .line 108
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 110
    const-string v0, "ALTER TABLE callevents ADD COLUMN numberOriginal varchar(200)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "ALTER TABLE smsevents ADD COLUMN numberOriginal varchar(200)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 116
    const-string v0, "DB Update from 4 to 5"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 117
    const-string v0, "create table excludedtimes (_id integer primary key autoincrement, day string not null, starttime int not null, endtime int  not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "ALTER TABLE callevents ADD COLUMN numberOriginal varchar(200)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "ALTER TABLE smsevents ADD COLUMN numberOriginal varchar(200)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    :cond_1
    const/4 v0, 0x6

    if-gt p2, v0, :cond_2

    .line 125
    const-string v0, "DB Update to 7"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 126
    const-string v0, "create table trafficevents (_id integer primary key autoincrement, type varchar(10) not null, bytesIn long  ,bytesOut long ,period varchar(15) not null ,timeBegin not null,timeEnd not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    :cond_2
    return-void
.end method
