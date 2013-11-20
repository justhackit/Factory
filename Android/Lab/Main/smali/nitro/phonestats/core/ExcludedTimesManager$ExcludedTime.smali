.class public Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
.super Ljava/lang/Object;
.source "ExcludedTimesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/ExcludedTimesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcludedTime"
.end annotation


# instance fields
.field public day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

.field public endtime:I

.field public starttime:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "day2"
    .parameter "starttime2"
    .parameter "endtime2"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->ordinalToEnum(I)Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 32
    iput p2, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->starttime:I

    .line 33
    iput p3, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->endtime:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter "day2"
    .parameter "starttime2"
    .parameter "endtime2"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->dayStringToExcludeDay(Ljava/lang/String;)Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    .line 23
    iput p2, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->starttime:I

    .line 24
    iput p3, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->endtime:I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "created ExcludeTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public matches(Ljava/util/Calendar;I)Z
    .locals 9
    .parameter "calendar"
    .parameter "duration"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 43
    .local v0, dayOfWeek:I
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->MONDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_1

    if-eq v0, v7, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 45
    :cond_1
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->TUESDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_2

    if-ne v0, v8, :cond_0

    .line 47
    :cond_2
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEDNSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 49
    :cond_3
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->THURSDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    .line 51
    :cond_4
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->FRIDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_5

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    .line 53
    :cond_5
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SATURDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_6

    if-ne v0, v6, :cond_0

    .line 55
    :cond_6
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->SUNDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_7

    if-ne v0, v3, :cond_0

    .line 57
    :cond_7
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WEEKEND:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_8

    if-eq v0, v7, :cond_0

    if-eq v0, v8, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    .line 59
    :cond_8
    iget-object v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->day:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    sget-object v5, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;->WORKINGDAY:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedDay;

    if-ne v4, v5, :cond_9

    if-eq v0, v3, :cond_0

    if-eq v0, v6, :cond_0

    .line 62
    :cond_9
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 63
    .local v1, hourOfDay:I
    iget v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->starttime:I

    if-lt v1, v4, :cond_0

    iget v4, p0, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->endtime:I

    if-gt v1, v4, :cond_0

    move v2, v3

    .line 64
    goto :goto_0
.end method
