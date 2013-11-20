.class public Lnitro/phonestats/core/traffic/CronExpression;
.super Ljava/lang/Object;
.source "CronExpression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final ALL_SPEC:Ljava/lang/Integer; = null

.field protected static final ALL_SPEC_INT:I = 0x63

.field protected static final DAY_OF_MONTH:I = 0x3

.field protected static final DAY_OF_WEEK:I = 0x5

.field protected static final HOUR:I = 0x2

.field protected static final MINUTE:I = 0x1

.field protected static final MONTH:I = 0x4

.field protected static final NO_SPEC:Ljava/lang/Integer; = null

.field protected static final NO_SPEC_INT:I = 0x62

.field protected static final SECOND:I = 0x0

.field protected static final YEAR:I = 0x6

.field protected static final dayMap:Ljava/util/Map; = null

.field protected static final monthMap:Ljava/util/Map; = null

.field private static final serialVersionUID:J = 0x2e47e2f0fL


# instance fields
.field private cronExpression:Ljava/lang/String;

.field protected transient daysOfMonth:Ljava/util/TreeSet;

.field protected transient daysOfWeek:Ljava/util/TreeSet;

.field protected transient expressionParsed:Z

.field protected transient hours:Ljava/util/TreeSet;

.field protected transient lastdayOfMonth:Z

.field protected transient lastdayOfWeek:Z

.field protected transient minutes:Ljava/util/TreeSet;

.field protected transient months:Ljava/util/TreeSet;

.field protected transient nearestWeekday:Z

.field protected transient nthdayOfWeek:I

.field protected transient seconds:Ljava/util/TreeSet;

.field private timeZone:Ljava/util/TimeZone;

.field protected transient years:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 214
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x63

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lnitro/phonestats/core/traffic/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    .line 215
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x62

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    .line 220
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "JAN"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "FEB"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "MAR"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "APR"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "MAY"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "JUN"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "JUL"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "AUG"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "SEP"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "OCT"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "NOV"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    const-string v1, "DEC"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "SUN"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "MON"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "TUE"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "WED"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "THU"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "FRI"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "SAT"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "cronExpression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->cronExpression:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->timeZone:Ljava/util/TimeZone;

    .line 252
    iput-boolean v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfWeek:Z

    .line 253
    iput v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    .line 254
    iput-boolean v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfMonth:Z

    .line 255
    iput-boolean v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->nearestWeekday:Z

    .line 256
    iput-boolean v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->expressionParsed:Z

    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cronExpression cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->cronExpression:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->cronExpression:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/traffic/CronExpression;->buildExpression(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static isValidExpression(Ljava/lang/String;)Z
    .locals 2
    .parameter "cronExpression"

    .prologue
    .line 397
    :try_start_0
    new-instance v1, Lnitro/phonestats/core/traffic/CronExpression;

    invoke-direct {v1, p0}, Lnitro/phonestats/core/traffic/CronExpression;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, pe:Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1581
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1583
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->cronExpression:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/traffic/CronExpression;->buildExpression(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :goto_0
    return-void

    .line 1584
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected addToSet(IIII)V
    .locals 9
    .parameter "val"
    .parameter "end"
    .parameter "incr"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0, p4}, Lnitro/phonestats/core/traffic/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v3

    .line 910
    .local v3, set:Ljava/util/TreeSet;
    if-eqz p4, :cond_0

    const/4 v6, 0x1

    if-ne p4, v6, :cond_2

    .line 911
    :cond_0
    if-ltz p1, :cond_1

    const/16 v6, 0x3b

    if-gt p1, v6, :cond_1

    const/16 v6, 0x3b

    if-le p2, v6, :cond_a

    :cond_1
    const/16 v6, 0x63

    if-eq p1, v6, :cond_a

    .line 912
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Minute and Second values must be between 0 and 59"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 914
    :cond_2
    const/4 v6, 0x2

    if-ne p4, v6, :cond_4

    .line 915
    if-ltz p1, :cond_3

    const/16 v6, 0x17

    if-gt p1, v6, :cond_3

    const/16 v6, 0x17

    if-le p2, v6, :cond_a

    :cond_3
    const/16 v6, 0x63

    if-eq p1, v6, :cond_a

    .line 916
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Hour values must be between 0 and 23"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 918
    :cond_4
    const/4 v6, 0x3

    if-ne p4, v6, :cond_6

    .line 919
    const/4 v6, 0x1

    if-lt p1, v6, :cond_5

    const/16 v6, 0x1f

    if-gt p1, v6, :cond_5

    const/16 v6, 0x1f

    if-le p2, v6, :cond_a

    :cond_5
    const/16 v6, 0x63

    if-eq p1, v6, :cond_a

    const/16 v6, 0x62

    if-eq p1, v6, :cond_a

    .line 920
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Day of month values must be between 1 and 31"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 922
    :cond_6
    const/4 v6, 0x4

    if-ne p4, v6, :cond_8

    .line 923
    const/4 v6, 0x1

    if-lt p1, v6, :cond_7

    const/16 v6, 0xc

    if-gt p1, v6, :cond_7

    const/16 v6, 0xc

    if-le p2, v6, :cond_a

    :cond_7
    const/16 v6, 0x63

    if-eq p1, v6, :cond_a

    .line 924
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Month values must be between 1 and 12"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 926
    :cond_8
    const/4 v6, 0x5

    if-ne p4, v6, :cond_a

    .line 927
    if-eqz p1, :cond_9

    const/4 v6, 0x7

    if-gt p1, v6, :cond_9

    const/4 v6, 0x7

    if-le p2, v6, :cond_a

    :cond_9
    const/16 v6, 0x63

    if-eq p1, v6, :cond_a

    const/16 v6, 0x62

    if-eq p1, v6, :cond_a

    .line 928
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Day-of-Week values must be between 1 and 7"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 932
    :cond_a
    if-eqz p3, :cond_b

    const/4 v6, -0x1

    if-ne p3, v6, :cond_e

    :cond_b
    const/16 v6, 0x63

    if-eq p1, v6, :cond_e

    .line 933
    const/4 v6, -0x1

    if-eq p1, v6, :cond_d

    .line 934
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_c
    :goto_0
    return-void

    .line 936
    :cond_d
    sget-object v6, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 942
    :cond_e
    move v4, p1

    .line 943
    .local v4, startAt:I
    move v5, p2

    .line 945
    .local v5, stopAt:I
    const/16 v6, 0x63

    if-ne p1, v6, :cond_f

    if-gtz p3, :cond_f

    .line 946
    const/4 p3, 0x1

    .line 947
    sget-object v6, Lnitro/phonestats/core/traffic/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_f
    if-eqz p4, :cond_10

    const/4 v6, 0x1

    if-ne p4, v6, :cond_14

    .line 951
    :cond_10
    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    .line 952
    const/16 v5, 0x3b

    .line 954
    :cond_11
    const/4 v6, -0x1

    if-eq v4, v6, :cond_12

    const/16 v6, 0x63

    if-ne v4, v6, :cond_13

    .line 955
    :cond_12
    const/4 v4, 0x0

    .line 999
    :cond_13
    :goto_1
    const/4 v2, -0x1

    .line 1000
    .local v2, max:I
    if-ge v5, v4, :cond_23

    .line 1001
    packed-switch p4, :pswitch_data_0

    .line 1023
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unexpected type encountered"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 957
    .end local v2           #max:I
    :cond_14
    const/4 v6, 0x2

    if-ne p4, v6, :cond_17

    .line 958
    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    .line 959
    const/16 v5, 0x17

    .line 961
    :cond_15
    const/4 v6, -0x1

    if-eq v4, v6, :cond_16

    const/16 v6, 0x63

    if-ne v4, v6, :cond_13

    .line 962
    :cond_16
    const/4 v4, 0x0

    goto :goto_1

    .line 964
    :cond_17
    const/4 v6, 0x3

    if-ne p4, v6, :cond_1a

    .line 965
    const/4 v6, -0x1

    if-ne v5, v6, :cond_18

    .line 966
    const/16 v5, 0x1f

    .line 968
    :cond_18
    const/4 v6, -0x1

    if-eq v4, v6, :cond_19

    const/16 v6, 0x63

    if-ne v4, v6, :cond_13

    .line 969
    :cond_19
    const/4 v4, 0x1

    goto :goto_1

    .line 971
    :cond_1a
    const/4 v6, 0x4

    if-ne p4, v6, :cond_1d

    .line 972
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1b

    .line 973
    const/16 v5, 0xc

    .line 975
    :cond_1b
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x63

    if-ne v4, v6, :cond_13

    .line 976
    :cond_1c
    const/4 v4, 0x1

    goto :goto_1

    .line 978
    :cond_1d
    const/4 v6, 0x5

    if-ne p4, v6, :cond_20

    .line 979
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1e

    .line 980
    const/4 v5, 0x7

    .line 982
    :cond_1e
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1f

    const/16 v6, 0x63

    if-ne v4, v6, :cond_13

    .line 983
    :cond_1f
    const/4 v4, 0x1

    goto :goto_1

    .line 985
    :cond_20
    const/4 v6, 0x6

    if-ne p4, v6, :cond_13

    .line 986
    const/4 v6, -0x1

    if-ne v5, v6, :cond_21

    .line 987
    const/16 v5, 0x833

    .line 989
    :cond_21
    const/4 v6, -0x1

    if-eq v4, v6, :cond_22

    const/16 v6, 0x63

    if-ne v4, v6, :cond_13

    .line 990
    :cond_22
    const/16 v4, 0x7b2

    goto :goto_1

    .line 1003
    .restart local v2       #max:I
    :pswitch_0
    const/16 v2, 0x3c

    .line 1025
    :goto_2
    add-int/2addr v5, v2

    .line 1028
    :cond_23
    move v0, v4

    .local v0, i:I
    :goto_3
    if-gt v0, v5, :cond_c

    .line 1029
    const/4 v6, -0x1

    if-ne v2, v6, :cond_24

    .line 1031
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1028
    :goto_4
    add-int/2addr v0, p3

    goto :goto_3

    .line 1006
    .end local v0           #i:I
    :pswitch_1
    const/16 v2, 0x3c

    .line 1007
    goto :goto_2

    .line 1009
    :pswitch_2
    const/16 v2, 0x18

    .line 1010
    goto :goto_2

    .line 1012
    :pswitch_3
    const/16 v2, 0xc

    .line 1013
    goto :goto_2

    .line 1015
    :pswitch_4
    const/4 v2, 0x7

    .line 1016
    goto :goto_2

    .line 1018
    :pswitch_5
    const/16 v2, 0x1f

    .line 1019
    goto :goto_2

    .line 1021
    :pswitch_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Start year must be less than stop year"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1034
    .restart local v0       #i:I
    :cond_24
    rem-int v1, v0, v2

    .line 1038
    .local v1, i2:I
    if-nez v1, :cond_26

    const/4 v6, 0x4

    if-eq p4, v6, :cond_25

    const/4 v6, 0x5

    if-eq p4, v6, :cond_25

    const/4 v6, 0x3

    if-ne p4, v6, :cond_26

    .line 1039
    :cond_25
    move v1, v2

    .line 1042
    :cond_26
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method protected buildExpression(Ljava/lang/String;)V
    .locals 14
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v11, 0x1

    iput-boolean v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->expressionParsed:Z

    .line 416
    :try_start_0
    iget-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->seconds:Ljava/util/TreeSet;

    if-nez v11, :cond_0

    .line 417
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->seconds:Ljava/util/TreeSet;

    .line 419
    :cond_0
    iget-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->minutes:Ljava/util/TreeSet;

    if-nez v11, :cond_1

    .line 420
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->minutes:Ljava/util/TreeSet;

    .line 422
    :cond_1
    iget-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->hours:Ljava/util/TreeSet;

    if-nez v11, :cond_2

    .line 423
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->hours:Ljava/util/TreeSet;

    .line 425
    :cond_2
    iget-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    if-nez v11, :cond_3

    .line 426
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    .line 428
    :cond_3
    iget-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->months:Ljava/util/TreeSet;

    if-nez v11, :cond_4

    .line 429
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->months:Ljava/util/TreeSet;

    .line 431
    :cond_4
    iget-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    if-nez v11, :cond_5

    .line 432
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    .line 434
    :cond_5
    iget-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->years:Ljava/util/TreeSet;

    if-nez v11, :cond_6

    .line 435
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lnitro/phonestats/core/traffic/CronExpression;->years:Ljava/util/TreeSet;

    .line 438
    :cond_6
    const/4 v6, 0x0

    .line 440
    .local v6, exprOn:I
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v11, " \t"

    const/4 v12, 0x0

    invoke-direct {v7, p1, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 442
    .local v7, exprsTok:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    if-le v6, v11, :cond_8

    .line 469
    :cond_7
    const/4 v11, 0x5

    if-gt v6, v11, :cond_c

    .line 470
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "Unexpected end of expression."

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 493
    .end local v6           #exprOn:I
    .end local v7           #exprsTok:Ljava/util/StringTokenizer;
    :catch_0
    move-exception v8

    .line 494
    .local v8, pe:Ljava/text/ParseException;
    throw v8

    .line 443
    .end local v8           #pe:Ljava/text/ParseException;
    .restart local v6       #exprOn:I
    .restart local v7       #exprsTok:Ljava/util/StringTokenizer;
    :cond_8
    :try_start_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, expr:Ljava/lang/String;
    const/4 v11, 0x3

    if-ne v6, v11, :cond_9

    const/16 v11, 0x4c

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_9

    .line 447
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_9

    .line 448
    new-instance v11, Ljava/text/ParseException;

    .line 449
    const-string v12, "Support for specifying \'L\' and \'LW\' with other days of the month is not implemented"

    .line 450
    const/4 v13, -0x1

    .line 448
    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    .end local v5           #expr:Ljava/lang/String;
    .end local v6           #exprOn:I
    .end local v7           #exprsTok:Ljava/util/StringTokenizer;
    :catch_1
    move-exception v4

    .line 496
    .local v4, e:Ljava/lang/Exception;
    new-instance v11, Ljava/text/ParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Illegal cron expression format ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 453
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #expr:Ljava/lang/String;
    .restart local v6       #exprOn:I
    .restart local v7       #exprsTok:Ljava/util/StringTokenizer;
    :cond_9
    const/4 v11, 0x5

    if-ne v6, v11, :cond_a

    const/16 v11, 0x4c

    :try_start_2
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    .line 454
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_a

    .line 455
    new-instance v11, Ljava/text/ParseException;

    .line 456
    const-string v12, "Support for specifying \'L\' with other days of the week is not implemented"

    .line 457
    const/4 v13, -0x1

    .line 455
    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 460
    :cond_a
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v10, v5, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .local v10, vTok:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-nez v11, :cond_b

    .line 466
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 462
    :cond_b
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, v:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v9, v6}, Lnitro/phonestats/core/traffic/CronExpression;->storeExpressionVals(ILjava/lang/String;I)I

    goto :goto_1

    .line 473
    .end local v5           #expr:Ljava/lang/String;
    .end local v9           #v:Ljava/lang/String;
    .end local v10           #vTok:Ljava/util/StringTokenizer;
    :cond_c
    const/4 v11, 0x6

    if-gt v6, v11, :cond_d

    .line 474
    const/4 v11, 0x0

    const-string v12, "*"

    const/4 v13, 0x6

    invoke-virtual {p0, v11, v12, v13}, Lnitro/phonestats/core/traffic/CronExpression;->storeExpressionVals(ILjava/lang/String;I)I

    .line 477
    :cond_d
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lnitro/phonestats/core/traffic/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v3

    .line 478
    .local v3, dow:Ljava/util/TreeSet;
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lnitro/phonestats/core/traffic/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v2

    .line 481
    .local v2, dom:Ljava/util/TreeSet;
    sget-object v11, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v2, v11}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v0, 0x0

    .line 482
    .local v0, dayOfMSpec:Z
    :goto_2
    sget-object v11, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v3, v11}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v1, 0x0

    .line 484
    .local v1, dayOfWSpec:Z
    :goto_3
    if-eqz v0, :cond_e

    if-eqz v1, :cond_12

    .line 486
    :cond_e
    if-eqz v1, :cond_f

    if-eqz v0, :cond_12

    .line 489
    :cond_f
    new-instance v11, Ljava/text/ParseException;

    .line 490
    const-string v12, "Support for specifying both a day-of-week AND a day-of-month parameter is not implemented."

    .line 491
    const/4 v13, 0x0

    .line 489
    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 481
    .end local v0           #dayOfMSpec:Z
    .end local v1           #dayOfWSpec:Z
    :cond_10
    const/4 v0, 0x1

    goto :goto_2

    .line 482
    .restart local v0       #dayOfMSpec:Z
    :cond_11
    const/4 v1, 0x1

    goto :goto_3

    .line 498
    .restart local v1       #dayOfWSpec:Z
    :cond_12
    return-void
.end method

.method protected checkNext(ILjava/lang/String;II)I
    .locals 17
    .parameter "pos"
    .parameter "s"
    .parameter "val"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 670
    const/4 v5, -0x1

    .line 671
    .local v5, end:I
    move/from16 v6, p1

    .line 673
    .local v6, i:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v6, v14, :cond_0

    .line 674
    const/4 v14, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v14, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v7, v6

    .line 791
    .end local v6           #i:I
    .local v7, i:I
    :goto_0
    return v7

    .line 678
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 680
    .local v3, c:C
    const/16 v14, 0x4c

    if-ne v3, v14, :cond_2

    .line 681
    const/4 v14, 0x5

    move/from16 v0, p4

    if-ne v0, v14, :cond_1

    .line 682
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfWeek:Z

    .line 686
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v8

    .line 687
    .local v8, set:Ljava/util/TreeSet;
    new-instance v14, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .line 689
    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_0

    .line 684
    .end local v7           #i:I
    .end local v8           #set:Ljava/util/TreeSet;
    .restart local v6       #i:I
    :cond_1
    new-instance v14, Ljava/text/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\'L\' option is not valid here. (pos="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 692
    :cond_2
    const/16 v14, 0x57

    if-ne v3, v14, :cond_4

    .line 693
    const/4 v14, 0x3

    move/from16 v0, p4

    if-ne v0, v14, :cond_3

    .line 694
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnitro/phonestats/core/traffic/CronExpression;->nearestWeekday:Z

    .line 698
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v8

    .line 699
    .restart local v8       #set:Ljava/util/TreeSet;
    new-instance v14, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 700
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .line 701
    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_0

    .line 696
    .end local v7           #i:I
    .end local v8           #set:Ljava/util/TreeSet;
    .restart local v6       #i:I
    :cond_3
    new-instance v14, Ljava/text/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\'W\' option is not valid here. (pos="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 704
    :cond_4
    const/16 v14, 0x23

    if-ne v3, v14, :cond_8

    .line 705
    const/4 v14, 0x5

    move/from16 v0, p4

    if-eq v0, v14, :cond_5

    .line 706
    new-instance v14, Ljava/text/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\'#\' option is not valid here. (pos="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 708
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 710
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    .line 711
    move-object/from16 v0, p0

    iget v14, v0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    const/4 v15, 0x1

    if-lt v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    const/4 v15, 0x5

    if-le v14, v15, :cond_7

    .line 712
    :cond_6
    new-instance v14, Ljava/lang/Exception;

    invoke-direct {v14}, Ljava/lang/Exception;-><init>()V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :catch_0
    move-exception v4

    .line 715
    .local v4, e:Ljava/lang/Exception;
    new-instance v14, Ljava/text/ParseException;

    .line 716
    const-string v15, "A numeric value between 1 and 5 must follow the \'#\' option"

    .line 715
    invoke-direct {v14, v15, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 719
    .end local v4           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v8

    .line 720
    .restart local v8       #set:Ljava/util/TreeSet;
    new-instance v14, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 721
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .line 722
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 725
    .end local v7           #i:I
    .end local v8           #set:Ljava/util/TreeSet;
    .restart local v6       #i:I
    :cond_8
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_e

    .line 726
    add-int/lit8 v6, v6, 0x1

    .line 727
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 728
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 729
    .local v9, v:I
    move v5, v9

    .line 730
    add-int/lit8 v6, v6, 0x1

    .line 731
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v6, v14, :cond_9

    .line 732
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v14, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v7, v6

    .line 733
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 735
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 736
    const/16 v14, 0x30

    if-lt v3, v14, :cond_a

    const/16 v14, 0x39

    if-gt v3, v14, :cond_a

    .line 737
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1, v6}, Lnitro/phonestats/core/traffic/CronExpression;->getValue(ILjava/lang/String;I)Lnitro/phonestats/core/traffic/ValueSet;

    move-result-object v13

    .line 738
    .local v13, vs:Lnitro/phonestats/core/traffic/ValueSet;
    iget v10, v13, Lnitro/phonestats/core/traffic/ValueSet;->value:I

    .line 739
    .local v10, v1:I
    move v5, v10

    .line 740
    iget v6, v13, Lnitro/phonestats/core/traffic/ValueSet;->pos:I

    .line 742
    .end local v10           #v1:I
    .end local v13           #vs:Lnitro/phonestats/core/traffic/ValueSet;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v14, 0x2f

    if-ne v3, v14, :cond_d

    .line 743
    add-int/lit8 v6, v6, 0x1

    .line 744
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 745
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 746
    .local v11, v2:I
    add-int/lit8 v6, v6, 0x1

    .line 747
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v6, v14, :cond_b

    .line 748
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v11, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v7, v6

    .line 749
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 751
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 752
    const/16 v14, 0x30

    if-lt v3, v14, :cond_c

    const/16 v14, 0x39

    if-gt v3, v14, :cond_c

    .line 753
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v6}, Lnitro/phonestats/core/traffic/CronExpression;->getValue(ILjava/lang/String;I)Lnitro/phonestats/core/traffic/ValueSet;

    move-result-object v13

    .line 754
    .restart local v13       #vs:Lnitro/phonestats/core/traffic/ValueSet;
    iget v12, v13, Lnitro/phonestats/core/traffic/ValueSet;->value:I

    .line 755
    .local v12, v3:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v12, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    .line 756
    iget v6, v13, Lnitro/phonestats/core/traffic/ValueSet;->pos:I

    move v7, v6

    .line 757
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 759
    .end local v7           #i:I
    .end local v12           #v3:I
    .end local v13           #vs:Lnitro/phonestats/core/traffic/ValueSet;
    .restart local v6       #i:I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v11, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v7, v6

    .line 760
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 763
    .end local v7           #i:I
    .end local v11           #v2:I
    .restart local v6       #i:I
    :cond_d
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v14, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v7, v6

    .line 764
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 768
    .end local v7           #i:I
    .end local v9           #v:I
    .restart local v6       #i:I
    :cond_e
    const/16 v14, 0x2f

    if-ne v3, v14, :cond_11

    .line 769
    add-int/lit8 v6, v6, 0x1

    .line 770
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 771
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 772
    .restart local v11       #v2:I
    add-int/lit8 v6, v6, 0x1

    .line 773
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v6, v14, :cond_f

    .line 774
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v11, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v7, v6

    .line 775
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 777
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_f
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 778
    const/16 v14, 0x30

    if-lt v3, v14, :cond_10

    const/16 v14, 0x39

    if-gt v3, v14, :cond_10

    .line 779
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v6}, Lnitro/phonestats/core/traffic/CronExpression;->getValue(ILjava/lang/String;I)Lnitro/phonestats/core/traffic/ValueSet;

    move-result-object v13

    .line 780
    .restart local v13       #vs:Lnitro/phonestats/core/traffic/ValueSet;
    iget v12, v13, Lnitro/phonestats/core/traffic/ValueSet;->value:I

    .line 781
    .restart local v12       #v3:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v12, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    .line 782
    iget v6, v13, Lnitro/phonestats/core/traffic/ValueSet;->pos:I

    move v7, v6

    .line 783
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 785
    .end local v7           #i:I
    .end local v12           #v3:I
    .end local v13           #vs:Lnitro/phonestats/core/traffic/ValueSet;
    .restart local v6       #i:I
    :cond_10
    new-instance v14, Ljava/text/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Unexpected character \'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' after \'/\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 789
    .end local v11           #v2:I
    :cond_11
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v14, v2}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    .line 790
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .line 791
    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1589
    const/4 v0, 0x0

    .line 1591
    .local v0, copy:Lnitro/phonestats/core/traffic/CronExpression;
    :try_start_0
    new-instance v1, Lnitro/phonestats/core/traffic/CronExpression;

    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/CronExpression;->getCronExpression()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lnitro/phonestats/core/traffic/CronExpression;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    .end local v0           #copy:Lnitro/phonestats/core/traffic/CronExpression;
    .local v1, copy:Lnitro/phonestats/core/traffic/CronExpression;
    :try_start_1
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnitro/phonestats/core/traffic/CronExpression;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1597
    return-object v1

    .line 1593
    .end local v1           #copy:Lnitro/phonestats/core/traffic/CronExpression;
    .restart local v0       #copy:Lnitro/phonestats/core/traffic/CronExpression;
    :catch_0
    move-exception v2

    .line 1595
    .local v2, ex:Ljava/text/ParseException;
    :goto_0
    new-instance v3, Ljava/lang/IncompatibleClassChangeError;

    const-string v4, "Not Cloneable."

    invoke-direct {v3, v4}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1593
    .end local v0           #copy:Lnitro/phonestats/core/traffic/CronExpression;
    .end local v2           #ex:Ljava/text/ParseException;
    .restart local v1       #copy:Lnitro/phonestats/core/traffic/CronExpression;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #copy:Lnitro/phonestats/core/traffic/CronExpression;
    .restart local v0       #copy:Lnitro/phonestats/core/traffic/CronExpression;
    goto :goto_0
.end method

.method protected findNextWhiteSpace(ILjava/lang/String;)I
    .locals 2
    .parameter "i"
    .parameter "s"

    .prologue
    .line 899
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 903
    :cond_0
    return p1

    .line 899
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public getCronExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->cronExpression:Ljava/lang/String;

    return-object v0
.end method

.method protected getDayOfWeekNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 1103
    sget-object v1, Lnitro/phonestats/core/traffic/CronExpression;->dayMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1105
    .local v0, integer:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1106
    const/4 v1, -0x1

    .line 1109
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected getExpressionSetSummary(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter "list"

    .prologue
    .line 866
    sget-object v5, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 867
    const-string v5, "?"

    .line 887
    :goto_0
    return-object v5

    .line 869
    :cond_0
    sget-object v5, Lnitro/phonestats/core/traffic/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 870
    const-string v5, "*"

    goto :goto_0

    .line 873
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 875
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 876
    .local v3, itr:Ljava/util/Iterator;
    const/4 v1, 0x1

    .line 877
    .local v1, first:Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 887
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 878
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 879
    .local v2, iVal:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, val:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 881
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .parameter "set"

    .prologue
    .line 840
    sget-object v5, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 841
    const-string v5, "?"

    .line 861
    :goto_0
    return-object v5

    .line 843
    :cond_0
    sget-object v5, Lnitro/phonestats/core/traffic/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    const-string v5, "*"

    goto :goto_0

    .line 847
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 849
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 850
    .local v3, itr:Ljava/util/Iterator;
    const/4 v1, 0x1

    .line 851
    .local v1, first:Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 861
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 852
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 853
    .local v2, iVal:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, val:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 855
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 857
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getExpressionSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 799
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 801
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    iget-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    const-string v1, "minutes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 805
    iget-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    const-string v1, "hours: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    iget-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 810
    const-string v1, "daysOfMonth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    iget-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 812
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 813
    const-string v1, "months: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 814
    iget-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->months:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    const-string v1, "daysOfWeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    iget-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    const-string v1, "lastdayOfWeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    iget-boolean v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfWeek:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 821
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    const-string v1, "nearestWeekday: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    iget-boolean v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->nearestWeekday:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 824
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    const-string v1, "NthDayOfWeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    iget v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 827
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    const-string v1, "lastdayOfMonth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    iget-boolean v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfMonth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 830
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    const-string v1, "years: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    iget-object v1, p0, Lnitro/phonestats/core/traffic/CronExpression;->years:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 833
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFinalFireTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1539
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLastDayOfMonth(II)I
    .locals 3
    .parameter "monthNum"
    .parameter "year"

    .prologue
    const/16 v1, 0x1e

    const/16 v0, 0x1f

    .line 1548
    packed-switch p1, :pswitch_data_0

    .line 1574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal month number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1552
    :pswitch_0
    invoke-virtual {p0, p2}, Lnitro/phonestats/core/traffic/CronExpression;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    .line 1572
    :goto_0
    :pswitch_1
    return v0

    .line 1552
    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1556
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1560
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 1566
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 1570
    goto :goto_0

    .line 1548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method protected getMonthNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 1093
    sget-object v1, Lnitro/phonestats/core/traffic/CronExpression;->monthMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1095
    .local v0, integer:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1096
    const/4 v1, -0x1

    .line 1099
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getNextInvalidTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 11
    .parameter "date"

    .prologue
    const-wide/16 v9, 0x3e8

    .line 325
    const-wide/16 v1, 0x3e8

    .line 328
    .local v1, difference:J
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 329
    .local v0, adjustCal:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 330
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 331
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 333
    .local v3, lastDate:Ljava/util/Date;
    const/4 v4, 0x0

    .line 343
    .local v4, newDate:Ljava/util/Date;
    :cond_0
    :goto_0
    cmp-long v5, v1, v9

    if-eqz v5, :cond_1

    .line 353
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v9

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    return-object v5

    .line 344
    :cond_1
    invoke-virtual {p0, v3}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 346
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 348
    cmp-long v5, v1, v9

    if-nez v5, :cond_0

    .line 349
    move-object v3, v4

    goto :goto_0
.end method

.method public getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .parameter "date"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getNumericValue(Ljava/lang/String;I)I
    .locals 3
    .parameter "s"
    .parameter "i"

    .prologue
    .line 1087
    invoke-virtual {p0, p2, p1}, Lnitro/phonestats/core/traffic/CronExpression;->findNextWhiteSpace(ILjava/lang/String;)I

    move-result v0

    .line 1088
    .local v0, endOfVal:I
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, val:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected getSet(I)Ljava/util/TreeSet;
    .locals 1
    .parameter "type"

    .prologue
    .line 1048
    packed-switch p1, :pswitch_data_0

    .line 1064
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1050
    :pswitch_0
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->seconds:Ljava/util/TreeSet;

    goto :goto_0

    .line 1052
    :pswitch_1
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->minutes:Ljava/util/TreeSet;

    goto :goto_0

    .line 1054
    :pswitch_2
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->hours:Ljava/util/TreeSet;

    goto :goto_0

    .line 1056
    :pswitch_3
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    goto :goto_0

    .line 1058
    :pswitch_4
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->months:Ljava/util/TreeSet;

    goto :goto_0

    .line 1060
    :pswitch_5
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    goto :goto_0

    .line 1062
    :pswitch_6
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->years:Ljava/util/TreeSet;

    goto :goto_0

    .line 1048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 31
    .parameter "afterTime"

    .prologue
    .line 1120
    invoke-virtual/range {p0 .. p0}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 1124
    .local v5, cl:Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1126
    .end local p1
    .local v3, afterTime:Ljava/util/Date;
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1127
    const/16 v27, 0xe

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1129
    const/4 v12, 0x0

    .line 1131
    .local v12, gotOne:Z
    :goto_0
    if-eqz v12, :cond_0

    .line 1507
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    :goto_1
    return-object v27

    .line 1134
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    const/16 v28, 0xbb7

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1

    .line 1135
    const/16 v27, 0x0

    goto :goto_1

    .line 1138
    :cond_1
    const/16 v21, 0x0

    .line 1139
    .local v21, st:Ljava/util/SortedSet;
    const/16 v22, 0x0

    .line 1141
    .local v22, t:I
    const/16 v27, 0xd

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 1142
    .local v20, sec:I
    const/16 v27, 0xc

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 1145
    .local v17, min:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->seconds:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 1146
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v27

    if-eqz v27, :cond_2

    .line 1147
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1153
    :goto_2
    const/16 v27, 0xd

    move/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1155
    const/16 v27, 0xc

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 1156
    const/16 v27, 0xb

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 1157
    .local v13, hr:I
    const/16 v22, -0x1

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->minutes:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 1161
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v27

    if-eqz v27, :cond_3

    .line 1162
    move/from16 v22, v17

    .line 1163
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1168
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1169
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1170
    const/16 v27, 0xc

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1171
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lnitro/phonestats/core/traffic/CronExpression;->setCalendarHour(Ljava/util/Calendar;I)V

    goto/16 :goto_0

    .line 1149
    .end local v13           #hr:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->seconds:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1150
    add-int/lit8 v17, v17, 0x1

    .line 1151
    const/16 v27, 0xc

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 1165
    .restart local v13       #hr:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->minutes:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1166
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1174
    :cond_4
    const/16 v27, 0xc

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1176
    const/16 v27, 0xb

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 1177
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1178
    .local v6, day:I
    const/16 v22, -0x1

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->hours:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 1182
    if-eqz v21, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v27

    if-eqz v27, :cond_5

    .line 1183
    move/from16 v22, v13

    .line 1184
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1189
    :goto_4
    move/from16 v0, v22

    if-eq v13, v0, :cond_6

    .line 1190
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1191
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1192
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1193
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lnitro/phonestats/core/traffic/CronExpression;->setCalendarHour(Ljava/util/Calendar;I)V

    goto/16 :goto_0

    .line 1186
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->hours:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1187
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1196
    :cond_6
    const/16 v27, 0xb

    move/from16 v0, v27

    invoke-virtual {v5, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 1198
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1199
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    add-int/lit8 v18, v27, 0x1

    .line 1202
    .local v18, mon:I
    const/16 v22, -0x1

    .line 1203
    move/from16 v24, v18

    .line 1206
    .local v24, tmon:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    sget-object v28, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    const/4 v7, 0x0

    .line 1207
    .local v7, dayOfMSpec:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    sget-object v28, Lnitro/phonestats/core/traffic/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    const/4 v8, 0x0

    .line 1208
    .local v8, dayOfWSpec:Z
    :goto_6
    if-eqz v7, :cond_17

    if-nez v8, :cond_17

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfMonth:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1211
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->nearestWeekday:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    .line 1212
    move/from16 v22, v6

    .line 1213
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v6

    .line 1300
    :cond_7
    :goto_7
    move/from16 v0, v22

    if-ne v6, v0, :cond_8

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_2a

    .line 1301
    :cond_8
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1302
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1303
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1304
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1305
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1206
    .end local v7           #dayOfMSpec:Z
    .end local v8           #dayOfWSpec:Z
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 1207
    .restart local v7       #dayOfMSpec:Z
    :cond_a
    const/4 v8, 0x1

    goto :goto_6

    .line 1215
    .restart local v8       #dayOfWSpec:Z
    :cond_b
    move/from16 v22, v6

    .line 1216
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v6

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v23

    .line 1219
    .local v23, tcal:Ljava/util/Calendar;
    const/16 v27, 0xd

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1220
    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1221
    const/16 v27, 0xb

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1222
    const/16 v27, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 1223
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1224
    const/16 v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1226
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v16

    .line 1227
    .local v16, ldom:I
    const/16 v27, 0x7

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1229
    .local v11, dow:I
    const/16 v27, 0x7

    move/from16 v0, v27

    if-ne v11, v0, :cond_d

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_d

    .line 1230
    add-int/lit8 v6, v6, 0x2

    .line 1239
    :cond_c
    :goto_8
    const/16 v27, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1240
    const/16 v27, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1241
    const/16 v27, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Ljava/util/Calendar;->set(II)V

    .line 1242
    const/16 v27, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 1243
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1244
    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    .line 1245
    .local v19, nTime:Ljava/util/Date;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1246
    const/4 v6, 0x1

    .line 1247
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 1231
    .end local v19           #nTime:Ljava/util/Date;
    :cond_d
    const/16 v27, 0x7

    move/from16 v0, v27

    if-ne v11, v0, :cond_e

    .line 1232
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 1233
    :cond_e
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_f

    move/from16 v0, v16

    if-ne v6, v0, :cond_f

    .line 1234
    add-int/lit8 v6, v6, -0x2

    goto :goto_8

    .line 1235
    :cond_f
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_c

    .line 1236
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1250
    .end local v11           #dow:I
    .end local v16           #ldom:I
    .end local v23           #tcal:Ljava/util/Calendar;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->nearestWeekday:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 1251
    move/from16 v22, v6

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v23

    .line 1255
    .restart local v23       #tcal:Ljava/util/Calendar;
    const/16 v27, 0xd

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1256
    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1257
    const/16 v27, 0xb

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1258
    const/16 v27, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 1259
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1260
    const/16 v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1262
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v16

    .line 1263
    .restart local v16       #ldom:I
    const/16 v27, 0x7

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1265
    .restart local v11       #dow:I
    const/16 v27, 0x7

    move/from16 v0, v27

    if-ne v11, v0, :cond_12

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_12

    .line 1266
    add-int/lit8 v6, v6, 0x2

    .line 1275
    :cond_11
    :goto_9
    const/16 v27, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1276
    const/16 v27, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1277
    const/16 v27, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Ljava/util/Calendar;->set(II)V

    .line 1278
    const/16 v27, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 1279
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1280
    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    .line 1281
    .restart local v19       #nTime:Ljava/util/Date;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1283
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 1267
    .end local v19           #nTime:Ljava/util/Date;
    :cond_12
    const/16 v27, 0x7

    move/from16 v0, v27

    if-ne v11, v0, :cond_13

    .line 1268
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 1269
    :cond_13
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_14

    move/from16 v0, v16

    if-ne v6, v0, :cond_14

    .line 1270
    add-int/lit8 v6, v6, -0x2

    goto :goto_9

    .line 1271
    :cond_14
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_11

    .line 1272
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1285
    .end local v11           #dow:I
    .end local v16           #ldom:I
    .end local v23           #tcal:Ljava/util/Calendar;
    :cond_15
    if-eqz v21, :cond_16

    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v27

    if-eqz v27, :cond_16

    .line 1286
    move/from16 v22, v6

    .line 1287
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1290
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v15

    .line 1291
    .local v15, lastDay:I
    if-le v6, v15, :cond_7

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1293
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 1296
    .end local v15           #lastDay:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1297
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 1310
    :cond_17
    if-eqz v8, :cond_29

    if-nez v7, :cond_29

    .line 1312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfWeek:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1316
    .restart local v11       #dow:I
    const/16 v27, 0x7

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1317
    .local v4, cDow:I
    const/4 v10, 0x0

    .line 1318
    .local v10, daysToAdd:I
    if-ge v4, v11, :cond_18

    .line 1319
    sub-int v10, v11, v4

    .line 1321
    :cond_18
    if-le v4, v11, :cond_19

    .line 1322
    rsub-int/lit8 v27, v4, 0x7

    add-int v10, v11, v27

    .line 1325
    :cond_19
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v14

    .line 1327
    .local v14, lDay:I
    add-int v27, v6, v10

    move/from16 v0, v27

    if-le v0, v14, :cond_1b

    .line 1329
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1330
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1331
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1332
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1333
    const/16 v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1340
    :cond_1a
    add-int/lit8 v10, v10, 0x7

    .line 1339
    :cond_1b
    add-int v27, v6, v10

    add-int/lit8 v27, v27, 0x7

    move/from16 v0, v27

    if-le v0, v14, :cond_1a

    .line 1343
    add-int/2addr v6, v10

    .line 1345
    if-lez v10, :cond_2a

    .line 1346
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1347
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1348
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1349
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1350
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1355
    .end local v4           #cDow:I
    .end local v10           #daysToAdd:I
    .end local v11           #dow:I
    .end local v14           #lDay:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    move/from16 v27, v0

    if-eqz v27, :cond_24

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1359
    .restart local v11       #dow:I
    const/16 v27, 0x7

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1360
    .restart local v4       #cDow:I
    const/4 v10, 0x0

    .line 1361
    .restart local v10       #daysToAdd:I
    if-ge v4, v11, :cond_21

    .line 1362
    sub-int v10, v11, v4

    .line 1367
    :cond_1d
    :goto_a
    const/4 v9, 0x0

    .line 1368
    .local v9, dayShifted:Z
    if-lez v10, :cond_1e

    .line 1369
    const/4 v9, 0x1

    .line 1372
    :cond_1e
    add-int/2addr v6, v10

    .line 1373
    div-int/lit8 v25, v6, 0x7

    .line 1374
    .local v25, weekOfMonth:I
    rem-int/lit8 v27, v6, 0x7

    if-lez v27, :cond_1f

    .line 1375
    add-int/lit8 v25, v25, 0x1

    .line 1378
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    move/from16 v27, v0

    sub-int v27, v27, v25

    mul-int/lit8 v10, v27, 0x7

    .line 1379
    add-int/2addr v6, v10

    .line 1380
    if-ltz v10, :cond_20

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v27

    move/from16 v0, v27

    if-le v6, v0, :cond_22

    .line 1381
    :cond_20
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1382
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1383
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1384
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1385
    const/16 v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1363
    .end local v9           #dayShifted:Z
    .end local v25           #weekOfMonth:I
    :cond_21
    if-le v4, v11, :cond_1d

    .line 1364
    rsub-int/lit8 v27, v4, 0x7

    add-int v10, v11, v27

    goto :goto_a

    .line 1388
    .restart local v9       #dayShifted:Z
    .restart local v25       #weekOfMonth:I
    :cond_22
    if-gtz v10, :cond_23

    if-eqz v9, :cond_2a

    .line 1389
    :cond_23
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1390
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1391
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1392
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1393
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1398
    .end local v4           #cDow:I
    .end local v9           #dayShifted:Z
    .end local v10           #daysToAdd:I
    .end local v11           #dow:I
    .end local v25           #weekOfMonth:I
    :cond_24
    const/16 v27, 0x7

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1399
    .restart local v4       #cDow:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1401
    .restart local v11       #dow:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 1402
    if-eqz v21, :cond_25

    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v27

    if-lez v27, :cond_25

    .line 1403
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1406
    :cond_25
    const/4 v10, 0x0

    .line 1407
    .restart local v10       #daysToAdd:I
    if-ge v4, v11, :cond_26

    .line 1408
    sub-int v10, v11, v4

    .line 1410
    :cond_26
    if-le v4, v11, :cond_27

    .line 1411
    rsub-int/lit8 v27, v4, 0x7

    add-int v10, v11, v27

    .line 1414
    :cond_27
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/traffic/CronExpression;->getLastDayOfMonth(II)I

    move-result v14

    .line 1416
    .restart local v14       #lDay:I
    add-int v27, v6, v10

    move/from16 v0, v27

    if-le v0, v14, :cond_28

    .line 1418
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1419
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1420
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1421
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1422
    const/16 v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1425
    :cond_28
    if-lez v10, :cond_2a

    .line 1426
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1427
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1428
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1429
    const/16 v27, 0x5

    add-int v28, v6, v10

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1430
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1437
    .end local v4           #cDow:I
    .end local v10           #daysToAdd:I
    .end local v11           #dow:I
    .end local v14           #lDay:I
    :cond_29
    new-instance v27, Ljava/lang/UnsupportedOperationException;

    .line 1438
    const-string v28, "Support for specifying both a day-of-week AND a day-of-month parameter is not implemented."

    .line 1437
    invoke-direct/range {v27 .. v28}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1441
    :cond_2a
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1443
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v27

    add-int/lit8 v18, v27, 0x1

    .line 1446
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 1447
    .local v26, year:I
    const/16 v22, -0x1

    .line 1451
    const/16 v27, 0x833

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2b

    .line 1452
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 1456
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->months:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 1457
    if-eqz v21, :cond_2c

    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v27

    if-eqz v27, :cond_2c

    .line 1458
    move/from16 v22, v18

    .line 1459
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1464
    :goto_b
    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_2d

    .line 1465
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1466
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1467
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1468
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1469
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1472
    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1461
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->months:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1462
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 1475
    :cond_2d
    const/16 v27, 0x2

    add-int/lit8 v28, v18, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1479
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 1480
    const/16 v22, -0x1

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/traffic/CronExpression;->years:Ljava/util/TreeSet;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 1484
    if-eqz v21, :cond_2e

    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v27

    if-eqz v27, :cond_2e

    .line 1485
    move/from16 v22, v26

    .line 1486
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 1491
    move/from16 v0, v26

    move/from16 v1, v22

    if-eq v0, v1, :cond_2f

    .line 1492
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1493
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1494
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1495
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1496
    const/16 v27, 0x2

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1499
    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 1488
    :cond_2e
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 1502
    :cond_2f
    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1504
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method protected getTimeBefore(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .parameter "endTime"

    .prologue
    .line 1530
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->timeZone:Ljava/util/TimeZone;

    .line 365
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected getValue(ILjava/lang/String;I)Lnitro/phonestats/core/traffic/ValueSet;
    .locals 5
    .parameter "v"
    .parameter "s"
    .parameter "i"

    .prologue
    .line 1069
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1070
    .local v0, c:C
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, s1:Ljava/lang/String;
    :goto_0
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    .line 1079
    :cond_0
    new-instance v2, Lnitro/phonestats/core/traffic/ValueSet;

    invoke-direct {v2}, Lnitro/phonestats/core/traffic/ValueSet;-><init>()V

    .line 1081
    .local v2, val:Lnitro/phonestats/core/traffic/ValueSet;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p3, v3, :cond_2

    .end local p3
    :goto_1
    iput p3, v2, Lnitro/phonestats/core/traffic/ValueSet;->pos:I

    .line 1082
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lnitro/phonestats/core/traffic/ValueSet;->value:I

    .line 1083
    return-object v2

    .line 1072
    .end local v2           #val:Lnitro/phonestats/core/traffic/ValueSet;
    .restart local p3
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    add-int/lit8 p3, p3, 0x1

    .line 1074
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 1077
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 1081
    .restart local v2       #val:Lnitro/phonestats/core/traffic/ValueSet;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method protected isLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 1543
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p1, 0x190

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSatisfiedBy(Ljava/util/Date;)Z
    .locals 6
    .parameter "date"

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 291
    .local v1, testDateCal:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 293
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 295
    .local v0, originalDate:Ljava/util/Date;
    const/16 v4, 0xd

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 297
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnitro/phonestats/core/traffic/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 299
    .local v2, timeAfter:Ljava/util/Date;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method protected setCalendarHour(Ljava/util/Calendar;I)V
    .locals 2
    .parameter "cal"
    .parameter "hour"

    .prologue
    const/16 v1, 0xb

    .line 1518
    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 1519
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    .line 1520
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1522
    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 373
    iput-object p1, p0, Lnitro/phonestats/core/traffic/CronExpression;->timeZone:Ljava/util/TimeZone;

    .line 374
    return-void
.end method

.method protected skipWhiteSpace(ILjava/lang/String;)I
    .locals 2
    .parameter "i"
    .parameter "s"

    .prologue
    .line 891
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 895
    :cond_0
    return p1

    .line 891
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method protected storeExpressionVals(ILjava/lang/String;I)I
    .locals 12
    .parameter "pos"
    .parameter "s"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v4, 0x0

    .line 503
    .local v4, incr:I
    invoke-virtual {p0, p1, p2}, Lnitro/phonestats/core/traffic/CronExpression;->skipWhiteSpace(ILjava/lang/String;)I

    move-result v3

    .line 504
    .local v3, i:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_0

    move v9, v3

    .line 665
    :goto_0
    return v9

    .line 507
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 508
    .local v0, c:C
    const/16 v9, 0x41

    if-lt v0, v9, :cond_a

    const/16 v9, 0x5a

    if-gt v0, v9, :cond_a

    const-string v9, "L"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "LW"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 509
    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, sub:Ljava/lang/String;
    const/4 v6, -0x1

    .line 511
    .local v6, sval:I
    const/4 v2, -0x1

    .line 512
    .local v2, eval:I
    const/4 v9, 0x4

    if-ne p3, v9, :cond_2

    .line 513
    invoke-virtual {p0, v5}, Lnitro/phonestats/core/traffic/CronExpression;->getMonthNumber(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 514
    if-gtz v6, :cond_1

    .line 515
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid Month value: \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 517
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v3, 0x3

    if-le v9, v10, :cond_7

    .line 518
    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 519
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_7

    .line 520
    add-int/lit8 v3, v3, 0x4

    .line 521
    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 522
    invoke-virtual {p0, v5}, Lnitro/phonestats/core/traffic/CronExpression;->getMonthNumber(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 523
    if-gtz v2, :cond_7

    .line 524
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid Month value: \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 528
    :cond_2
    const/4 v9, 0x5

    if-ne p3, v9, :cond_9

    .line 529
    invoke-virtual {p0, v5}, Lnitro/phonestats/core/traffic/CronExpression;->getDayOfWeekNumber(Ljava/lang/String;)I

    move-result v6

    .line 530
    if-gez v6, :cond_3

    .line 531
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid Day-of-Week value: \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 533
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v3, 0x3

    if-le v9, v10, :cond_7

    .line 534
    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 535
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_4

    .line 536
    add-int/lit8 v3, v3, 0x4

    .line 537
    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 538
    invoke-virtual {p0, v5}, Lnitro/phonestats/core/traffic/CronExpression;->getDayOfWeekNumber(Ljava/lang/String;)I

    move-result v2

    .line 539
    if-gez v2, :cond_7

    .line 540
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid Day-of-Week value: \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 542
    :cond_4
    const/16 v9, 0x23

    if-ne v0, v9, :cond_6

    .line 544
    add-int/lit8 v3, v3, 0x4

    .line 545
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    .line 546
    iget v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_5

    iget v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->nthdayOfWeek:I

    const/4 v10, 0x5

    if-le v9, v10, :cond_7

    .line 547
    :cond_5
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, e:Ljava/lang/Exception;
    new-instance v9, Ljava/text/ParseException;

    .line 551
    const-string v10, "A numeric value between 1 and 5 must follow the \'#\' option"

    .line 550
    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 553
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    const/16 v9, 0x4c

    if-ne v0, v9, :cond_7

    .line 554
    const/4 v9, 0x1

    iput-boolean v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfWeek:Z

    .line 555
    add-int/lit8 v3, v3, 0x1

    .line 562
    :cond_7
    const/4 v9, -0x1

    if-eq v2, v9, :cond_8

    .line 563
    const/4 v4, 0x1

    .line 565
    :cond_8
    invoke-virtual {p0, v6, v2, v4, p3}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    .line 566
    add-int/lit8 v9, v3, 0x3

    goto/16 :goto_0

    .line 560
    :cond_9
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Illegal characters for this position: \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 569
    .end local v2           #eval:I
    .end local v5           #sub:Ljava/lang/String;
    .end local v6           #sval:I
    :cond_a
    const/16 v9, 0x3f

    if-ne v0, v9, :cond_e

    .line 570
    add-int/lit8 v3, v3, 0x1

    .line 571
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_b

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-eq v9, v10, :cond_b

    .line 572
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Illegal character after \'?\': "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 574
    :cond_b
    const/4 v9, 0x5

    if-eq p3, v9, :cond_c

    const/4 v9, 0x3

    if-eq p3, v9, :cond_c

    .line 575
    new-instance v9, Ljava/text/ParseException;

    .line 576
    const-string v10, "\'?\' can only be specfied for Day-of-Month or Day-of-Week."

    .line 575
    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 578
    :cond_c
    const/4 v9, 0x5

    if-ne p3, v9, :cond_d

    iget-boolean v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfMonth:Z

    if-nez v9, :cond_d

    .line 579
    iget-object v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v9}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 580
    .local v7, val:I
    const/16 v9, 0x62

    if-ne v7, v9, :cond_d

    .line 581
    new-instance v9, Ljava/text/ParseException;

    .line 582
    const-string v10, "\'?\' can only be specfied for Day-of-Month -OR- Day-of-Week."

    .line 581
    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 586
    .end local v7           #val:I
    :cond_d
    const/16 v9, 0x62

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p3}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v9, v3

    .line 587
    goto/16 :goto_0

    .line 590
    :cond_e
    const/16 v9, 0x2a

    if-eq v0, v9, :cond_f

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_1d

    .line 591
    :cond_f
    const/16 v9, 0x2a

    if-ne v0, v9, :cond_10

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_10

    .line 592
    const/16 v9, 0x63

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10, v4, p3}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    .line 593
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 594
    :cond_10
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_12

    .line 595
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_11

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_11

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_12

    .line 596
    :cond_11
    new-instance v9, Ljava/text/ParseException;

    const-string v10, "\'/\' must be followed by an integer."

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 597
    :cond_12
    const/16 v9, 0x2a

    if-ne v0, v9, :cond_13

    .line 598
    add-int/lit8 v3, v3, 0x1

    .line 600
    :cond_13
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 601
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_1b

    .line 602
    add-int/lit8 v3, v3, 0x1

    .line 603
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_14

    .line 604
    new-instance v9, Ljava/text/ParseException;

    const-string v10, "Unexpected end of string."

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 607
    :cond_14
    invoke-virtual {p0, p2, v3}, Lnitro/phonestats/core/traffic/CronExpression;->getNumericValue(Ljava/lang/String;I)I

    move-result v4

    .line 609
    add-int/lit8 v3, v3, 0x1

    .line 610
    const/16 v9, 0xa

    if-le v4, v9, :cond_15

    .line 611
    add-int/lit8 v3, v3, 0x1

    .line 613
    :cond_15
    const/16 v9, 0x3b

    if-le v4, v9, :cond_17

    if-eqz p3, :cond_16

    const/4 v9, 0x1

    if-ne p3, v9, :cond_17

    .line 614
    :cond_16
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Increment > 60 : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 615
    :cond_17
    const/16 v9, 0x17

    if-le v4, v9, :cond_18

    const/4 v9, 0x2

    if-ne p3, v9, :cond_18

    .line 616
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Increment > 24 : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 617
    :cond_18
    const/16 v9, 0x1f

    if-le v4, v9, :cond_19

    const/4 v9, 0x3

    if-ne p3, v9, :cond_19

    .line 618
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Increment > 31 : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 619
    :cond_19
    const/4 v9, 0x7

    if-le v4, v9, :cond_1a

    const/4 v9, 0x5

    if-ne p3, v9, :cond_1a

    .line 620
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Increment > 7 : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 621
    :cond_1a
    const/16 v9, 0xc

    if-le v4, v9, :cond_1c

    const/4 v9, 0x4

    if-ne p3, v9, :cond_1c

    .line 622
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Increment > 12 : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 625
    :cond_1b
    const/4 v4, 0x1

    .line 628
    :cond_1c
    const/16 v9, 0x63

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10, v4, p3}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v9, v3

    .line 629
    goto/16 :goto_0

    .line 630
    :cond_1d
    const/16 v9, 0x4c

    if-ne v0, v9, :cond_21

    .line 631
    add-int/lit8 v3, v3, 0x1

    .line 632
    const/4 v9, 0x3

    if-ne p3, v9, :cond_1e

    .line 633
    const/4 v9, 0x1

    iput-boolean v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->lastdayOfMonth:Z

    .line 635
    :cond_1e
    const/4 v9, 0x5

    if-ne p3, v9, :cond_1f

    .line 636
    const/4 v9, 0x7

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11, p3}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    .line 638
    :cond_1f
    const/4 v9, 0x3

    if-ne p3, v9, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v3, :cond_20

    .line 639
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 640
    const/16 v9, 0x57

    if-ne v0, v9, :cond_20

    .line 641
    const/4 v9, 0x1

    iput-boolean v9, p0, Lnitro/phonestats/core/traffic/CronExpression;->nearestWeekday:Z

    .line 642
    add-int/lit8 v3, v3, 0x1

    :cond_20
    move v9, v3

    .line 645
    goto/16 :goto_0

    .line 646
    :cond_21
    const/16 v9, 0x30

    if-lt v0, v9, :cond_24

    const/16 v9, 0x39

    if-gt v0, v9, :cond_24

    .line 647
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 648
    .restart local v7       #val:I
    add-int/lit8 v3, v3, 0x1

    .line 649
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_22

    .line 650
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual {p0, v7, v9, v10, p3}, Lnitro/phonestats/core/traffic/CronExpression;->addToSet(IIII)V

    move v9, v3

    .line 665
    goto/16 :goto_0

    .line 652
    :cond_22
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 653
    const/16 v9, 0x30

    if-lt v0, v9, :cond_23

    const/16 v9, 0x39

    if-gt v0, v9, :cond_23

    .line 654
    invoke-virtual {p0, v7, p2, v3}, Lnitro/phonestats/core/traffic/CronExpression;->getValue(ILjava/lang/String;I)Lnitro/phonestats/core/traffic/ValueSet;

    move-result-object v8

    .line 655
    .local v8, vs:Lnitro/phonestats/core/traffic/ValueSet;
    iget v7, v8, Lnitro/phonestats/core/traffic/ValueSet;->value:I

    .line 656
    iget v3, v8, Lnitro/phonestats/core/traffic/ValueSet;->pos:I

    .line 658
    .end local v8           #vs:Lnitro/phonestats/core/traffic/ValueSet;
    :cond_23
    invoke-virtual {p0, v3, p2, v7, p3}, Lnitro/phonestats/core/traffic/CronExpression;->checkNext(ILjava/lang/String;II)I

    move-result v3

    move v9, v3

    .line 659
    goto/16 :goto_0

    .line 662
    .end local v7           #val:I
    :cond_24
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected character: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lnitro/phonestats/core/traffic/CronExpression;->cronExpression:Ljava/lang/String;

    return-object v0
.end method
