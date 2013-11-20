.class public Lnitro/phonestats/core/DataProvider;
.super Landroid/content/ContentProvider;
.source "DataProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "nitro.phonestats.providers.events"

.field private static final CALLS:I = 0x1

.field private static final CALLS_FAILED:I = 0x4

.field private static final CALLS_ID:I = 0x2

.field private static final CALLS_INCOMING:I = 0x6

.field private static final CALLS_MISSED:I = 0x3

.field private static final CALLS_OUTGOING:I = 0x5

.field private static final CONTENT_TYPE_CALLS:Ljava/lang/String; = "vnd.android.cursor.item/nitro.phonestats.providers.events.calls"

.field private static final CONTENT_TYPE_CALLS_DIR:Ljava/lang/String; = "vnd.android.cursor.dir/nitro.phonestats.providers.events.calls"

.field private static final CONTENT_TYPE_SMS:Ljava/lang/String; = "vnd.android.cursor.item/nitro.phonestats.providers.events.sms"

.field private static final CONTENT_TYPE_SMS_DIR:Ljava/lang/String; = "vnd.android.cursor.dir/nitro.phonestats.providers.events.sms"

.field private static final CONTENT_TYPE_TRAFFIC:Ljava/lang/String; = "vnd.android.cursor.item/nitro.phonestats.providers.events.traffic"

.field private static final CONTENT_TYPE_TRAFFIC_DIR:Ljava/lang/String; = "vnd.android.cursor.dir/nitro.phonestats.providers.events.traffic"

.field public static final CONTENT_URI_CALLS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CALLS_FAILED:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CALLS_INCOMING:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CALLS_MISSED:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CALLS_OUTGOING:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMS_INCOMING:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMS_OUTGOING:Landroid/net/Uri; = null

.field public static final CONTENT_URI_TRAFFIC:Landroid/net/Uri; = null

.field public static final CONTENT_URI_TRAFFIC_DAILY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_TRAFFIC_MONTHLY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_TRAFFIC_WEEKLY:Landroid/net/Uri; = null

.field private static final SMS:I = 0xd

.field private static final SMS_ID:I = 0xe

.field private static final SMS_INCOMING:I = 0xf

.field private static final SMS_OUTGOING:I = 0x10

.field private static final TRAFFIC:I = 0x11

.field private static final TRAFFIC_DAILY:I = 0x13

.field private static final TRAFFIC_ID:I = 0x12

.field private static final TRAFFIC_MONTHLY:I = 0x15

.field private static final TRAFFIC_WEEKLY:I = 0x14

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "content://nitro.phonestats.providers.events/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS:Landroid/net/Uri;

    .line 30
    const-string v0, "content://nitro.phonestats.providers.events/calls/missed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_MISSED:Landroid/net/Uri;

    .line 31
    const-string v0, "content://nitro.phonestats.providers.events/calls/failed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_FAILED:Landroid/net/Uri;

    .line 32
    const-string v0, "content://nitro.phonestats.providers.events/calls/outgoing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_OUTGOING:Landroid/net/Uri;

    .line 33
    const-string v0, "content://nitro.phonestats.providers.events/calls/incoming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_INCOMING:Landroid/net/Uri;

    .line 35
    const-string v0, "content://nitro.phonestats.providers.events/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_SMS:Landroid/net/Uri;

    .line 36
    const-string v0, "content://nitro.phonestats.providers.events/sms/incoming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_SMS_INCOMING:Landroid/net/Uri;

    .line 37
    const-string v0, "content://nitro.phonestats.providers.events/sms/outgoing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_SMS_OUTGOING:Landroid/net/Uri;

    .line 39
    const-string v0, "content://nitro.phonestats.providers.events/traffic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_TRAFFIC:Landroid/net/Uri;

    .line 40
    const-string v0, "content://nitro.phonestats.providers.events/traffic/daily"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_TRAFFIC_DAILY:Landroid/net/Uri;

    .line 41
    const-string v0, "content://nitro.phonestats.providers.events/traffic/monthly"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_TRAFFIC_MONTHLY:Landroid/net/Uri;

    .line 42
    const-string v0, "content://nitro.phonestats.providers.events/traffic/weekly"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_TRAFFIC_WEEKLY:Landroid/net/Uri;

    .line 68
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 69
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "calls/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "calls/missed"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "calls/failed"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "calls/outgoing"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "calls/incoming"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "sms"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "sms/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "sms/incoming"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "sms/outgoing"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "traffic"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "traffic/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "traffic/daily"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "traffic/weekly"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats.providers.events"

    const-string v2, "traffic/monthly"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 103
    sget-object v0, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/nitro.phonestats.providers.events.calls"

    .line 123
    :goto_0
    return-object v0

    .line 107
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/nitro.phonestats.providers.events.calls"

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/nitro.phonestats.providers.events.calls"

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/nitro.phonestats.providers.events.calls"

    goto :goto_0

    .line 113
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/nitro.phonestats.providers.events.sms"

    goto :goto_0

    .line 115
    :pswitch_6
    const-string v0, "vnd.android.cursor.item/nitro.phonestats.providers.events.sms"

    goto :goto_0

    .line 117
    :pswitch_7
    const-string v0, "vnd.android.cursor.dir/nitro.phonestats.providers.events.sms"

    goto :goto_0

    .line 119
    :pswitch_8
    const-string v0, "vnd.android.cursor.dir/nitro.phonestats.providers.events.sms"

    goto :goto_0

    .line 121
    :pswitch_9
    const-string v0, "vnd.android.cursor.item/nitro.phonestats.providers.events.traffic"

    goto :goto_0

    .line 123
    :pswitch_a
    const-string v0, "vnd.android.cursor.dir/nitro.phonestats.providers.events.traffic"

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v7, 0x0

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, notifyUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 138
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lnitro/phonestats/core/DataProvider;->databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;

    invoke-virtual {v5}, Lnitro/phonestats/core/helper/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 142
    const-string v5, "callevents"

    invoke-virtual {v0, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 162
    .local v2, rowId:J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 163
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lnitro/phonestats/core/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 168
    :cond_0
    return-object v1

    .line 147
    .end local v2           #rowId:J
    :cond_1
    sget-object v5, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 149
    const-string v5, "smsevents"

    invoke-virtual {v0, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2       #rowId:J
    goto :goto_0

    .line 152
    .end local v2           #rowId:J
    :cond_2
    sget-object v5, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x11

    if-ne v5, v6, :cond_3

    .line 154
    const-string v5, "trafficevents"

    invoke-virtual {v0, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2       #rowId:J
    goto :goto_0

    .line 159
    .end local v2           #rowId:J
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown URI "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lnitro/phonestats/core/helper/DatabaseHelper;

    invoke-virtual {p0}, Lnitro/phonestats/core/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/helper/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/core/DataProvider;->databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 180
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lnitro/phonestats/core/DataProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 234
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :pswitch_1
    const-string v2, "callevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 238
    :goto_0
    iget-object v2, p0, Lnitro/phonestats/core/DataProvider;->databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;

    invoke-virtual {v2}, Lnitro/phonestats/core/helper/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    .line 239
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 243
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lnitro/phonestats/core/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 244
    return-object v8

    .line 186
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_2
    const-string v2, "callevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :pswitch_3
    const-string v2, "callevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 192
    const-string v2, "type=\'Missed Call\'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :pswitch_4
    const-string v2, "callevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 197
    const-string v2, "type=\'Failed Call\'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :pswitch_5
    const-string v2, "callevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 202
    const-string v2, "type=\'Incoming Call\'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :pswitch_6
    const-string v2, "callevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 207
    const-string v2, "type=\'Outgoing Call\'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :pswitch_7
    const-string v2, "smsevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_8
    const-string v2, "smsevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 220
    :pswitch_9
    const-string v2, "smsevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 221
    const-string v2, "type=\'Outgoing SMS\'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 225
    :pswitch_a
    const-string v2, "smsevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 226
    const-string v2, "type=\'Incoming SMS\'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 230
    :pswitch_b
    const-string v2, "trafficevents"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method
