.class public Lnitro/phonestats/core/helper/StatsUtils;
.super Lnitro/phonestats/core/helper/NitroUtils;
.source "StatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/helper/StatsUtils$TimingMode;
    }
.end annotation


# static fields
.field private static final BYTE_SCALES:[Ljava/lang/String; = null

.field private static final PACKAGE_NAME:Ljava/lang/String; = "nitro.phonestats"

.field private static REFRESH_GAP_TIME:I

.field private static numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const-string v1, "GB"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "TB"

    aput-object v2, v0, v1

    sput-object v0, Lnitro/phonestats/core/helper/StatsUtils;->BYTE_SCALES:[Ljava/lang/String;

    .line 42
    const/16 v0, 0x1f4

    sput v0, Lnitro/phonestats/core/helper/StatsUtils;->REFRESH_GAP_TIME:I

    .line 45
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sput v3, Lnitro/phonestats/core/helper/StatsUtils;->REFRESH_GAP_TIME:I

    .line 27
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lnitro/phonestats/core/helper/NitroUtils;-><init>()V

    return-void
.end method

.method public static calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;
    .locals 12
    .parameter "ctx"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 301
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 303
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 305
    .local v0, cal:Ljava/util/Calendar;
    const/4 v4, 0x1

    .line 308
    .local v4, monthBeginningDay:I
    :try_start_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getMonthBeginning(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 320
    :goto_0
    const/4 v7, 0x0

    .line 323
    .local v7, yearshift:I
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-le v4, v8, :cond_1

    .line 325
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 327
    const/16 v5, 0xc

    .line 328
    .local v5, monthBeginningMonth:I
    const/4 v7, -0x1

    .line 335
    :goto_1
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 336
    .local v1, cal2:Ljava/util/Calendar;
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v1, v8, v5, v4}, Ljava/util/Calendar;->set(III)V

    .line 338
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 341
    .local v3, monthBeginning:Ljava/util/Date;
    invoke-virtual {v3, v9}, Ljava/util/Date;->setHours(I)V

    .line 342
    invoke-virtual {v3, v9}, Ljava/util/Date;->setMinutes(I)V

    .line 343
    invoke-virtual {v3, v9}, Ljava/util/Date;->setSeconds(I)V

    .line 345
    return-object v3

    .line 309
    .end local v1           #cal2:Ljava/util/Calendar;
    .end local v3           #monthBeginning:Ljava/util/Date;
    .end local v5           #monthBeginningMonth:I
    .end local v7           #yearshift:I
    :catch_0
    move-exception v2

    .line 312
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #yearshift:I
    :cond_0
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .restart local v5       #monthBeginningMonth:I
    goto :goto_1

    .line 333
    .end local v5           #monthBeginningMonth:I
    :cond_1
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .restart local v5       #monthBeginningMonth:I
    goto :goto_1
.end method

.method public static calcPeriodDates(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;I)V
    .locals 13
    .parameter "ctx"
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .parameter "monthOffset"

    .prologue
    .line 370
    invoke-static {p0}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    .line 374
    .local v1, actualMonthBeginning:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 375
    .local v2, cal:Ljava/util/Calendar;
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 377
    const/4 v6, 0x1

    .line 380
    .local v6, monthBeginningDay:I
    :try_start_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getMonthBeginning(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 391
    :goto_0
    const/4 v9, 0x0

    .line 394
    .local v9, yearshift_beginning:I
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 395
    .local v0, actualMonth:I
    add-int v7, v0, p3

    .line 397
    .local v7, resultingBeginMonth:I
    const/4 v11, 0x1

    if-ge v7, v11, :cond_0

    .line 399
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v11

    rsub-int/lit8 v7, v11, 0xc

    .line 400
    const/4 v9, -0x1

    .line 403
    :cond_0
    add-int v11, v0, p3

    add-int/lit8 v8, v11, 0x1

    .line 404
    .local v8, resultingEndMonth:I
    const/4 v10, 0x0

    .line 406
    .local v10, yearshift_end:I
    const/4 v11, 0x1

    if-ge v8, v11, :cond_1

    .line 408
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    rsub-int/lit8 v8, v11, 0xc

    .line 409
    const/4 v10, -0x1

    .line 416
    :cond_1
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 418
    .local v3, cal2:Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v3, v11, v7, v6}, Ljava/util/Calendar;->set(III)V

    .line 419
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {p1, v11, v12}, Ljava/util/Date;->setTime(J)V

    .line 421
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 423
    .local v4, cal3:Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v4, v11, v8, v6}, Ljava/util/Calendar;->set(III)V

    .line 424
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Ljava/util/Date;->setTime(J)V

    .line 426
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/util/Date;->setHours(I)V

    .line 427
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/util/Date;->setMinutes(I)V

    .line 428
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/util/Date;->setSeconds(I)V

    .line 430
    const/4 v11, 0x0

    invoke-virtual {p2, v11}, Ljava/util/Date;->setHours(I)V

    .line 431
    const/4 v11, 0x0

    invoke-virtual {p2, v11}, Ljava/util/Date;->setMinutes(I)V

    .line 432
    const/4 v11, 0x0

    invoke-virtual {p2, v11}, Ljava/util/Date;->setSeconds(I)V

    .line 434
    return-void

    .line 381
    .end local v0           #actualMonth:I
    .end local v3           #cal2:Ljava/util/Calendar;
    .end local v4           #cal3:Ljava/util/Calendar;
    .end local v7           #resultingBeginMonth:I
    .end local v8           #resultingEndMonth:I
    .end local v9           #yearshift_beginning:I
    .end local v10           #yearshift_end:I
    :catch_0
    move-exception v5

    .line 384
    .local v5, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static calcTiming(Landroid/content/Context;I)I
    .locals 1
    .parameter "ctx"
    .parameter "duration"

    .prologue
    .line 287
    sget-object v0, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_10:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    invoke-static {v0, p1}, Lnitro/phonestats/core/helper/StatsUtils;->calcTiming(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;I)I

    move-result v0

    return v0
.end method

.method public static calcTiming(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;I)I
    .locals 16
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 104
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    .local v1, calcTime:Ljava/lang/Integer;
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_10:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_1

    .line 109
    if-eqz p1, :cond_0

    .line 111
    const/16 v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 112
    add-int/lit8 p1, p1, -0x3c

    .line 114
    if-lez p1, :cond_0

    .line 116
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x4024

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 117
    .local v10, xten:Ljava/lang/Double;
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 121
    .local v11, xten2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 274
    .end local v10           #xten:Ljava/lang/Double;
    .end local v11           #xten2:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_1
    return v12

    .line 127
    :cond_1
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_1_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_2

    move/from16 v12, p1

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_3

    .line 132
    if-eqz p1, :cond_0

    .line 134
    const/16 v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    add-int/lit8 p1, p1, -0x3c

    .line 137
    if-lez p1, :cond_0

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_3
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_60:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_4

    .line 147
    if-eqz p1, :cond_0

    .line 149
    const/16 v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 150
    add-int/lit8 p1, p1, -0x3c

    .line 152
    if-lez p1, :cond_0

    .line 154
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x404e

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 155
    .local v7, x60:Ljava/lang/Double;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 159
    .local v8, x60_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 164
    .end local v7           #x60:Ljava/lang/Double;
    .end local v8           #x60_2:Ljava/lang/Integer;
    :cond_4
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_30:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_5

    .line 166
    if-eqz p1, :cond_0

    .line 168
    const/16 v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 169
    add-int/lit8 p1, p1, -0x3c

    .line 171
    if-lez p1, :cond_0

    .line 173
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x403e

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 174
    .local v5, x30:Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 178
    .local v6, x30_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0x1e

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 183
    .end local v5           #x30:Ljava/lang/Double;
    .end local v6           #x30_2:Ljava/lang/Integer;
    :cond_5
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_10_10:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_6

    .line 186
    if-lez p1, :cond_0

    .line 188
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x4024

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 189
    .local v3, x10:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 190
    .local v4, x10_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 194
    .end local v3           #x10:Ljava/lang/Double;
    .end local v4           #x10_2:Ljava/lang/Integer;
    :cond_6
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_7

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const/16 v12, 0x1e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 198
    add-int/lit8 p1, p1, -0x1e

    .line 199
    if-lez p1, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 204
    :cond_7
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_6:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_8

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const/16 v12, 0x1e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 208
    add-int/lit8 p1, p1, -0x1e

    .line 209
    if-lez p1, :cond_0

    .line 210
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x4018

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 211
    .local v2, x:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 212
    .local v9, x_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0x6

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 216
    .end local v2           #x:Ljava/lang/Double;
    .end local v9           #x_2:Ljava/lang/Integer;
    :cond_8
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_10:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_9

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const/16 v12, 0x1e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 220
    add-int/lit8 p1, p1, -0x1e

    .line 221
    if-lez p1, :cond_0

    .line 222
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x4024

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 223
    .restart local v2       #x:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 224
    .restart local v9       #x_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 228
    .end local v2           #x:Ljava/lang/Double;
    .end local v9           #x_2:Ljava/lang/Integer;
    :cond_9
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_30:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_a

    .line 230
    if-eqz p1, :cond_0

    .line 231
    const/16 v12, 0x1e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 232
    add-int/lit8 p1, p1, -0x1e

    .line 233
    if-lez p1, :cond_0

    .line 234
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x403e

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 235
    .restart local v2       #x:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 236
    .restart local v9       #x_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0x1e

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 239
    .end local v2           #x:Ljava/lang/Double;
    .end local v9           #x_2:Ljava/lang/Integer;
    :cond_a
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_45_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_b

    .line 241
    if-eqz p1, :cond_0

    .line 242
    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 243
    add-int/lit8 p1, p1, -0x2d

    .line 244
    if-lez p1, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 249
    :cond_b
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_15:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_c

    .line 251
    if-eqz p1, :cond_0

    .line 252
    const/16 v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 253
    add-int/lit8 p1, p1, -0x3c

    .line 254
    if-lez p1, :cond_0

    .line 255
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide/high16 v14, 0x402e

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 256
    .restart local v2       #x:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 257
    .restart local v9       #x_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit8 v13, v13, 0xf

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 261
    .end local v2           #x:Ljava/lang/Double;
    .end local v9           #x_2:Ljava/lang/Integer;
    :cond_c
    sget-object v12, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_3600_3600:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_0

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const/16 v12, 0xe10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 265
    move/from16 v0, p1

    add-int/lit16 v0, v0, -0xe10

    move/from16 p1, v0

    .line 266
    if-lez p1, :cond_0

    .line 267
    move/from16 v0, p1

    int-to-double v12, v0

    const-wide v14, 0x40ac200000000000L

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 268
    .restart local v2       #x:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 269
    .restart local v9       #x_2:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/lit16 v13, v13, 0xe10

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static checkEnglishForce(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 701
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->forceEnglishLanguage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Countrycode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 708
    const-string v2, "en"

    .line 710
    .local v2, languageToLoad:Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .local v3, locale:Ljava/util/Locale;
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 714
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 716
    .local v0, config:Landroid/content/res/Configuration;
    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 718
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 718
    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #languageToLoad:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v1

    .line 723
    .local v1, e:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SecurityException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkServiceConnection(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 766
    return-void
.end method

.method public static cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 8
    .parameter "number"
    .parameter "countryCodeCorrection"
    .parameter "countryCode"

    .prologue
    .line 581
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 582
    .local v4, lenght:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 583
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 584
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 603
    if-eqz p1, :cond_3

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnitro/phonestats/core/helper/StatsUtils;->correctNationalPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 606
    :goto_0
    return-object v5

    .line 588
    :cond_1
    const/4 v1, 0x0

    .line 589
    .local v1, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 591
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 592
    .local v2, ch:C
    const/16 v5, 0x20

    if-eq v2, v5, :cond_2

    const/16 v5, 0x2f

    if-eq v2, v5, :cond_2

    const/16 v5, 0x2d

    if-eq v2, v5, :cond_2

    const/16 v5, 0x2e

    if-eq v2, v5, :cond_2

    const/16 v5, 0x28

    if-eq v2, v5, :cond_2

    const/16 v5, 0x29

    if-eq v2, v5, :cond_2

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    add-int/lit8 v1, v1, 0x1

    .line 589
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 606
    .end local v1           #c:I
    .end local v2           #ch:C
    .end local v3           #i:I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static correctNationalPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"
    .parameter "prefix"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 560
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 561
    .local v0, startsWithPlus:Z
    :goto_0
    const-string v5, "00"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 562
    .local v1, startsWithStandartVAZ:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 563
    .local v2, startsWithZero:Z
    :goto_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 575
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #startsWithPlus:Z
    .end local v1           #startsWithStandartVAZ:Z
    .end local v2           #startsWithZero:Z
    .restart local p0
    :cond_1
    move v0, v4

    .line 560
    goto :goto_0

    .restart local v0       #startsWithPlus:Z
    .restart local v1       #startsWithStandartVAZ:Z
    :cond_2
    move v2, v4

    .line 562
    goto :goto_1

    .line 568
    .restart local v2       #startsWithZero:Z
    :cond_3
    if-eqz v1, :cond_0

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static daysBetween(Ljava/util/Date;Ljava/util/Date;)J
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 456
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 457
    .local v0, diff:J
    long-to-double v2, v0

    const-wide v4, 0x4194997000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    return-wide v2
.end method

.method public static daysFrom(Ljava/util/Date;)J
    .locals 8
    .parameter "day"

    .prologue
    const-wide v6, 0x4194997000000000L

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 465
    .local v0, diff:J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "daysFrom: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v3, v0

    div-double/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/StatsUtils;->debug(Ljava/lang/String;)V

    .line 467
    long-to-double v2, v0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    return-wide v2
.end method

.method public static daysTill(Ljava/util/Date;)J
    .locals 8
    .parameter "incrMonth"

    .prologue
    const-wide v6, 0x4194997000000000L

    .line 443
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 445
    .local v0, diff:J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "daysTill: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v3, v0

    div-double/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/StatsUtils;->debug(Ljava/lang/String;)V

    .line 447
    long-to-double v2, v0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    return-wide v2
.end method

.method public static findContactByNumber2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "number"

    .prologue
    .line 478
    invoke-static {p1, p0}, Lnitro/phonestats/core/wrapper/ContactsWrapper;->getContactDetails(Ljava/lang/String;Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 479
    .local v0, info:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 481
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 484
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public static formatDataNumber(J)Ljava/lang/String;
    .locals 8
    .parameter "bytes"

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0xa

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .local v1, formatedData:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 840
    .local v0, counter:I
    cmp-long v3, p0, v6

    if-gez v3, :cond_2

    const/4 v2, 0x1

    .line 841
    .local v2, negative:Z
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 842
    :goto_1
    sget-object v3, Lnitro/phonestats/core/helper/StatsUtils;->BYTE_SCALES:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    ushr-long v3, p0, v5

    cmp-long v3, v3, v6

    if-gtz v3, :cond_3

    .line 847
    :cond_0
    if-eqz v2, :cond_1

    .line 848
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_1
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lnitro/phonestats/core/helper/StatsUtils;->BYTE_SCALES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 840
    .end local v2           #negative:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 843
    .restart local v2       #negative:Z
    :cond_3
    shr-long/2addr p0, v5

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    const-string v0, "nitro.phonestats"

    return-object v0
.end method

.method public static getSmsSplitLength(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, smsSplitLength:I
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useMultiSMS(Landroid/content/Context;)Z

    move-result v1

    .line 777
    .local v1, useMultiSMS:Z
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnnicodeSMSSplit(Landroid/content/Context;)Z

    move-result v2

    .line 778
    .local v2, useUniCodeSplit:Z
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 779
    const/16 v0, 0xa0

    .line 783
    :cond_0
    :goto_0
    return v0

    .line 780
    :cond_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 781
    const/16 v0, 0x46

    goto :goto_0
.end method

.method public static getTimingMode(Landroid/content/Context;)Lnitro/phonestats/core/helper/StatsUtils$TimingMode;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_billing_increment"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, pref:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 64
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_10:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    .line 91
    :goto_0
    return-object v2

    .line 65
    :cond_0
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 66
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 67
    :cond_1
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 68
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_1_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 69
    :cond_2
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 70
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_60:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 71
    :cond_3
    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 72
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_30:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 73
    :cond_4
    const-string v2, "6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 74
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_10_10:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 75
    :cond_5
    const-string v2, "7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 76
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 77
    :cond_6
    const-string v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 78
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_6:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 79
    :cond_7
    const-string v2, "9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 80
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_10:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 81
    :cond_8
    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 82
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_30_30:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 83
    :cond_9
    const-string v2, "11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 84
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_45_1:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 85
    :cond_a
    const-string v2, "12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 86
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_60_15:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto :goto_0

    .line 87
    :cond_b
    const-string v2, "13"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 88
    sget-object v2, Lnitro/phonestats/core/helper/StatsUtils$TimingMode;->_3600_3600:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    goto/16 :goto_0

    .line 91
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static incrMonth(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter "monthBeginning"

    .prologue
    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 359
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 360
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 362
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/StatsUtils;->debug(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static loadCleanedContacts(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    .line 654
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v3

    .line 655
    .local v3, useCCC:Z
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v0

    .line 656
    .local v0, ccc:I
    sget-object v4, Lnitro/phonestats/core/helper/StatsUtils;->numbers:Ljava/util/List;

    if-nez v4, :cond_0

    .line 658
    invoke-static {p0}, Lnitro/phonestats/core/wrapper/ContactsWrapper;->getAllNumbers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 659
    .local v2, temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lnitro/phonestats/core/helper/StatsUtils;->numbers:Ljava/util/List;

    .line 660
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 663
    .end local v2           #temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 660
    .restart local v2       #temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, s:Ljava/lang/String;
    sget-object v5, Lnitro/phonestats/core/helper/StatsUtils;->numbers:Ljava/util/List;

    invoke-static {v1, v3, v0}, Lnitro/phonestats/core/helper/StatsUtils;->cleanupNumber(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static needsUpdate(J)Z
    .locals 4
    .parameter "lastUpdated"

    .prologue
    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lnitro/phonestats/core/helper/StatsUtils;->REFRESH_GAP_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static numberPatternToRegExpPattern(Ljava/lang/String;Landroid/content/Context;)Ljava/util/regex/Pattern;
    .locals 4
    .parameter "numberPattern"
    .parameter "context"

    .prologue
    .line 642
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useAlternativePatttern(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-static {p0}, Lnitro/phonestats/core/helper/StatsUtils;->replaceAlternativeSymbolWithStar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 647
    :cond_0
    const-string v1, "+"

    const-string v2, "\\+"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    const-string v3, ".*"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 648
    .local v0, p:Ljava/util/regex/Pattern;
    return-object v0
.end method

.method public static refreshExtendedLog(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctx"
    .parameter "refreshWhat"

    .prologue
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REFRESH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnitro/phonestats/core/helper/NitroUtils;->longDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private static replaceAlternativeSymbolWithStar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "numberPattern"

    .prologue
    const/16 v1, 0x2a

    .line 550
    const/16 v0, 0x20

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 551
    const/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 552
    return-object p0
.end method

.method public static restartApp(ZLandroid/app/Activity;)V
    .locals 7
    .parameter "restartProcess"
    .parameter "activityToKill"

    .prologue
    const/4 v6, 0x0

    .line 789
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lnitro/phonestats/core/helper/Restarter;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 790
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 793
    .local v3, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 794
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 795
    const/16 v4, 0xd

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 798
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 799
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 801
    if-eqz p0, :cond_0

    .line 803
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 804
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 811
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static searchMatchingNumbers2(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "numberPattern"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {p1}, Lnitro/phonestats/core/helper/StatsUtils;->loadCleanedContacts(Landroid/content/Context;)V

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v0, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lnitro/phonestats/core/helper/StatsUtils;->numberPatternToRegExpPattern(Ljava/lang/String;Landroid/content/Context;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 628
    .local v1, p:Ljava/util/regex/Pattern;
    sget-object v3, Lnitro/phonestats/core/helper/StatsUtils;->numbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 635
    return-object v0

    .line 628
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 629
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static smsLengthToCount(I)I
    .locals 4
    .parameter "chars"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    const/16 v0, 0xa0

    if-gt p0, v0, :cond_0

    .line 508
    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_0
    int-to-double v0, p0

    const-wide/high16 v2, 0x4064

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static wildcardToRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "wildcard"

    .prologue
    .line 666
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 667
    .local v3, s:Ljava/lang/StringBuffer;
    const/16 v4, 0x5e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 668
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, is:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 689
    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 690
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 669
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 670
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 685
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 668
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    :sswitch_0
    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 675
    :sswitch_1
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 681
    :sswitch_2
    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2a -> :sswitch_0
        0x2e -> :sswitch_2
        0x3f -> :sswitch_1
        0x5b -> :sswitch_2
        0x5c -> :sswitch_2
        0x5d -> :sswitch_2
        0x5e -> :sswitch_2
        0x7b -> :sswitch_2
        0x7c -> :sswitch_2
        0x7d -> :sswitch_2
    .end sparse-switch
.end method
