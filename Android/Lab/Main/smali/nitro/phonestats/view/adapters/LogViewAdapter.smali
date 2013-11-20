.class public Lnitro/phonestats/view/adapters/LogViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "LogViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;,
        Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;,
        Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$CallEvent$CallAction:[I = null

.field private static synthetic $SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$SmsEvent$SmsAction:[I = null

.field private static final SECTION_DATE_FORMAT:Ljava/lang/String; = "MMM yyyy"


# instance fields
.field private dateFormatter:Ljava/text/DateFormat;

.field private density:F

.field private mContext:Landroid/content/Context;

.field private mDBThread:Ljava/util/concurrent/ExecutorService;

.field private mDisplayedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLock:Ljava/lang/Object;

.field private mOriginalEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionsBySection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:[Ljava/lang/String;

.field private mSectionsByEvenTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Date;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private timeFormatter:Ljava/text/DateFormat;


# direct methods
.method static synthetic $SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$CallEvent$CallAction()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lnitro/phonestats/view/adapters/LogViewAdapter;->$SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$CallEvent$CallAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->values()[Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->FAILED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {v1}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->INCOMING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {v1}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->MISSED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {v1}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->OUTGOING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {v1}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnitro/phonestats/view/adapters/LogViewAdapter;->$SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$CallEvent$CallAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$SmsEvent$SmsAction()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lnitro/phonestats/view/adapters/LogViewAdapter;->$SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$SmsEvent$SmsAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->values()[Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->INCOMING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-virtual {v1}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->OUTGOING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-virtual {v1}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lnitro/phonestats/view/adapters/LogViewAdapter;->$SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$SmsEvent$SmsAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/PhoneEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/PhoneEvent;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDBThread:Ljava/util/concurrent/ExecutorService;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->dateFormatter:Ljava/text/DateFormat;

    .line 63
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->timeFormatter:Ljava/text/DateFormat;

    .line 64
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->density:F

    .line 67
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->initSectionData()V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mOriginalEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10(Lnitro/phonestats/view/adapters/LogViewAdapter;)F
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->density:F

    return v0
.end method

.method static synthetic access$2(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mOriginalEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lnitro/phonestats/view/adapters/LogViewAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lnitro/phonestats/view/adapters/LogViewAdapter;->addContactToTmpData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$7(Lnitro/phonestats/view/adapters/LogViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->initSectionData()V

    return-void
.end method

.method static synthetic access$9(Lnitro/phonestats/view/adapters/LogViewAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addContactToTmpData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phone"

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, nameAndPhoneType:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lnitro/phonestats/core/wrapper/ContactsWrapper;->getContactDetails(Ljava/lang/String;Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 357
    .local v0, contactData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .end local v0           #contactData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    monitor-enter v3

    .line 367
    :try_start_0
    iget-object v4, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    move-object v2, v1

    :goto_1
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    return-object v1

    .line 361
    :cond_1
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 364
    :cond_2
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f07006a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 367
    goto :goto_1

    .line 366
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private initSectionData()V
    .locals 9

    .prologue
    .line 71
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mSectionsByEvenTimes:Ljava/util/HashMap;

    .line 72
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mPositionsBySection:Ljava/util/HashMap;

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v4, sectionNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 76
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mSections:[Ljava/lang/String;

    .line 91
    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v5, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/PhoneEvent;

    .line 79
    .local v0, event:Lnitro/phonestats/core/PhoneEvent;
    const-string v5, "MMM yyyy"

    iget-object v7, v0, Lnitro/phonestats/core/PhoneEvent;->datetime:Ljava/util/Date;

    invoke-static {v5, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, sectionName:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 81
    .local v2, sectionId:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 83
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 84
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v5, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mPositionsBySection:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1
    iget-object v5, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mSectionsByEvenTimes:Ljava/util/HashMap;

    iget-object v7, v0, Lnitro/phonestats/core/PhoneEvent;->datetime:Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0           #event:Lnitro/phonestats/core/PhoneEvent;
    .end local v2           #sectionId:I
    .end local v3           #sectionName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 108
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 122
    if-nez p4, :cond_0

    .line 123
    iget-object v10, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030015

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 124
    new-instance v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;

    invoke-direct {v9}, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;-><init>()V

    .line 125
    .local v9, tmpHolder:Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;
    const v10, 0x7f0a0072

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->contactImage:Landroid/widget/ImageView;

    .line 126
    const v10, 0x7f0a0073

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->phone:Landroid/widget/TextView;

    .line 127
    const v10, 0x7f0a0075

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->actualAmount:Landroid/widget/TextView;

    .line 128
    const v10, 0x7f0a0074

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->actualTitle:Landroid/widget/TextView;

    .line 129
    const v10, 0x7f0a0077

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedAmount:Landroid/widget/TextView;

    .line 130
    const v10, 0x7f0a0076

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedTitle:Landroid/widget/TextView;

    .line 132
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    :goto_0
    move-object v5, v9

    .line 139
    .local v5, holder:Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;
    iget-object v11, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 140
    :try_start_0
    iget-object v10, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnitro/phonestats/core/PhoneEvent;

    .line 139
    .local v8, phoneEvent:Lnitro/phonestats/core/PhoneEvent;
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    instance-of v10, v8, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    if-eqz v10, :cond_2

    move-object v4, v8

    .line 143
    check-cast v4, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    .line 144
    .local v4, event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->actualTitle:Landroid/widget/TextView;

    const v11, 0x7f070114

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedTitle:Landroid/widget/TextView;

    const v11, 0x7f070115

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->actualAmount:Landroid/widget/TextView;

    iget v11, v4, Lnitro/phonestats/core/PhoneEvent$CallEvent;->duration:I

    int-to-long v11, v11

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {}, Lnitro/phonestats/view/adapters/LogViewAdapter;->$SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$CallEvent$CallAction()[I

    move-result-object v10

    iget-object v11, v4, Lnitro/phonestats/core/PhoneEvent$CallEvent;->action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {v11}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 171
    .end local v4           #event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    :goto_1
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->phone:Landroid/widget/TextView;

    iget-object v11, v8, Lnitro/phonestats/core/PhoneEvent;->number:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v7, v8, Lnitro/phonestats/core/PhoneEvent;->number:Ljava/lang/String;

    .line 175
    .local v7, phone:Ljava/lang/String;
    iget-object v1, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->contactImage:Landroid/widget/ImageView;

    .line 176
    .local v1, contactImg:Landroid/widget/ImageView;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 177
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 179
    iget-object v11, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    monitor-enter v11

    .line 180
    :try_start_1
    iget-object v10, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "img"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 179
    .local v6, image:Landroid/graphics/Bitmap;
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    if-eqz v6, :cond_5

    .line 183
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    :goto_2
    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v7, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 213
    .local v2, createUri:Landroid/net/Uri;
    :try_start_2
    invoke-static {}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->checkAvailable()V

    .line 214
    new-instance v10, Lnitro/phonestats/view/adapters/LogViewAdapter$2;

    invoke-direct {v10, p0, v7, v2}, Lnitro/phonestats/view/adapters/LogViewAdapter$2;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/VerifyError; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :goto_3
    return-object p4

    .line 134
    .end local v1           #contactImg:Landroid/widget/ImageView;
    .end local v2           #createUri:Landroid/net/Uri;
    .end local v5           #holder:Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;
    .end local v6           #image:Landroid/graphics/Bitmap;
    .end local v7           #phone:Ljava/lang/String;
    .end local v8           #phoneEvent:Lnitro/phonestats/core/PhoneEvent;
    .end local v9           #tmpHolder:Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;

    .restart local v9       #tmpHolder:Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;
    goto/16 :goto_0

    .line 139
    .restart local v5       #holder:Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 149
    .restart local v4       #event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    .restart local v8       #phoneEvent:Lnitro/phonestats/core/PhoneEvent;
    :pswitch_0
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedAmount:Landroid/widget/TextView;

    invoke-virtual {v4}, Lnitro/phonestats/core/PhoneEvent$CallEvent;->getBilledDuration()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :pswitch_1
    iget-object v10, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 153
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedAmount:Landroid/widget/TextView;

    invoke-virtual {v4}, Lnitro/phonestats/core/PhoneEvent$CallEvent;->getBilledDuration()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 158
    :cond_1
    :pswitch_2
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedAmount:Landroid/widget/TextView;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v4           #event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    :cond_2
    move-object v4, v8

    .line 162
    check-cast v4, Lnitro/phonestats/core/PhoneEvent$SmsEvent;

    .line 163
    .local v4, event:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->actualTitle:Landroid/widget/TextView;

    const v11, 0x7f070116

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedTitle:Landroid/widget/TextView;

    const v11, 0x7f070117

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->actualAmount:Landroid/widget/TextView;

    iget v11, v4, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->characters:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v10, v4, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->action:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    sget-object v11, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->OUTGOING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 167
    :cond_3
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedAmount:Landroid/widget/TextView;

    invoke-virtual {v4}, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->getBilledMessages()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 169
    :cond_4
    iget-object v10, v5, Lnitro/phonestats/view/adapters/LogViewAdapter$ChildViewHolder;->billedAmount:Landroid/widget/TextView;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 179
    .end local v4           #event:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    .restart local v1       #contactImg:Landroid/widget/ImageView;
    .restart local v7       #phone:Ljava/lang/String;
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 185
    .restart local v6       #image:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v10, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 186
    const v11, 0x7f020086

    const/4 v12, 0x0

    .line 185
    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 186
    iget v11, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->density:F

    const/16 v12, 0x2d

    invoke-static {v11, v12}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v11

    .line 187
    iget v12, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->density:F

    const/16 v13, 0x2d

    invoke-static {v12, v13}, Lnitro/phonestats/core/helper/NitroUtils;->scaleDIPtoPixel(FI)I

    move-result v12

    const/4 v13, 0x0

    .line 185
    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object v10, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDBThread:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lnitro/phonestats/view/adapters/LogViewAdapter$1;

    invoke-direct {v11, p0, v7, v1}, Lnitro/phonestats/view/adapters/LogViewAdapter$1;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_2

    .line 227
    .restart local v2       #createUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 229
    .local v3, e:Ljava/lang/VerifyError;
    new-instance v10, Lnitro/phonestats/view/adapters/LogViewAdapter$3;

    invoke-direct {v10, p0, v2}, Lnitro/phonestats/view/adapters/LogViewAdapter$3;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Landroid/net/Uri;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mFilter:Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;)V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mFilter:Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;

    .line 420
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mFilter:Lnitro/phonestats/view/adapters/LogViewAdapter$EventFilter;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 249
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGroupCount()I
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 263
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 269
    if-nez p3, :cond_0

    .line 270
    iget-object v7, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030014

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 271
    new-instance v6, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

    invoke-direct {v6}, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;-><init>()V

    .line 272
    .local v6, tmpHolder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;
    const v7, 0x7f0a006e

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->eventIcon:Landroid/widget/ImageView;

    .line 273
    const v7, 0x7f0a006f

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->actionIcon:Landroid/widget/ImageView;

    .line 274
    const v7, 0x7f0a0015

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->header:Landroid/widget/TextView;

    .line 275
    const v7, 0x7f0a0070

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->date:Landroid/widget/TextView;

    .line 277
    invoke-virtual {p3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    :goto_0
    move-object v3, v6

    .line 283
    .local v3, holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;
    iget-object v8, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 284
    :try_start_0
    iget-object v7, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnitro/phonestats/core/PhoneEvent;

    .line 283
    .local v5, phoneEvent:Lnitro/phonestats/core/PhoneEvent;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    instance-of v7, v5, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    if-eqz v7, :cond_1

    move-object v2, v5

    .line 287
    check-cast v2, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    .line 288
    .local v2, event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->eventIcon:Landroid/widget/ImageView;

    const v8, 0x7f020080

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    invoke-static {}, Lnitro/phonestats/view/adapters/LogViewAdapter;->$SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$CallEvent$CallAction()[I

    move-result-object v7

    iget-object v8, v2, Lnitro/phonestats/core/PhoneEvent$CallEvent;->action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {v8}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 316
    .end local v2           #event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    :goto_1
    iget-object v1, v5, Lnitro/phonestats/core/PhoneEvent;->datetime:Ljava/util/Date;

    .line 317
    .local v1, date:Ljava/util/Date;
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->date:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->dateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->timeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v4, v5, Lnitro/phonestats/core/PhoneEvent;->number:Ljava/lang/String;

    .line 321
    .local v4, phone:Ljava/lang/String;
    iget-object v8, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    monitor-enter v8

    .line 322
    :try_start_1
    iget-object v7, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mTmpData:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    .local v0, contactName:Ljava/lang/String;
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    if-eqz v0, :cond_2

    .line 325
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_2
    return-object p3

    .line 279
    .end local v0           #contactName:Ljava/lang/String;
    .end local v1           #date:Ljava/util/Date;
    .end local v3           #holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;
    .end local v4           #phone:Ljava/lang/String;
    .end local v5           #phoneEvent:Lnitro/phonestats/core/PhoneEvent;
    .end local v6           #tmpHolder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;

    .restart local v6       #tmpHolder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;
    goto :goto_0

    .line 283
    .restart local v3       #holder:Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 291
    .restart local v2       #event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    .restart local v5       #phoneEvent:Lnitro/phonestats/core/PhoneEvent;
    :pswitch_0
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->actionIcon:Landroid/widget/ImageView;

    const v8, 0x7f020092

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 294
    :pswitch_1
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->actionIcon:Landroid/widget/ImageView;

    const v8, 0x7f020094

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 297
    :pswitch_2
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->actionIcon:Landroid/widget/ImageView;

    const v8, 0x7f020093

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 300
    :pswitch_3
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->actionIcon:Landroid/widget/ImageView;

    const v8, 0x7f020091

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .end local v2           #event:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    :cond_1
    move-object v2, v5

    .line 305
    check-cast v2, Lnitro/phonestats/core/PhoneEvent$SmsEvent;

    .line 306
    .local v2, event:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->eventIcon:Landroid/widget/ImageView;

    const v8, 0x7f0200a5

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    invoke-static {}, Lnitro/phonestats/view/adapters/LogViewAdapter;->$SWITCH_TABLE$nitro$phonestats$core$PhoneEvent$SmsEvent$SmsAction()[I

    move-result-object v7

    iget-object v8, v2, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->action:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-virtual {v8}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_1

    .line 309
    :pswitch_4
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->actionIcon:Landroid/widget/ImageView;

    const v8, 0x7f020092

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 312
    :pswitch_5
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->actionIcon:Landroid/widget/ImageView;

    const v8, 0x7f020094

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 321
    .end local v2           #event:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    .restart local v1       #date:Ljava/util/Date;
    .restart local v4       #phone:Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 327
    .restart local v0       #contactName:Ljava/lang/String;
    :cond_2
    iget-object v7, v3, Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v7, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDBThread:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lnitro/phonestats/view/adapters/LogViewAdapter$4;

    invoke-direct {v8, p0, v4, v3}, Lnitro/phonestats/view/adapters/LogViewAdapter$4;-><init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;Lnitro/phonestats/view/adapters/LogViewAdapter$GroupViewHolder;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 307
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    .line 384
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mPositionsBySection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 385
    .local v0, position:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 390
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mSectionsByEvenTimes:Ljava/util/HashMap;

    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/PhoneEvent;

    iget-object v0, v0, Lnitro/phonestats/core/PhoneEvent;->datetime:Ljava/util/Date;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/PhoneEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, eventlist:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/PhoneEvent;>;"
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mOriginalEvents:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-direct {p0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->initSectionData()V

    .line 99
    iget-object v0, p0, Lnitro/phonestats/view/adapters/LogViewAdapter;->mDisplayedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->notifyDataSetChanged()V

    .line 104
    :goto_0
    return-void

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/view/adapters/LogViewAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
