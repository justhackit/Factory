.class public Lnitro/phonestats/core/StatFactory;
.super Ljava/lang/Object;
.source "StatFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMainStats(Ljava/util/Map;Landroid/content/Context;)V
    .locals 64
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, mStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    new-instance v44, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 50
    .local v44, outgoing:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070106

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 51
    const v5, 0x7f0700f8

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 52
    const-string v5, "out_sec"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 53
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 54
    const v5, 0x7f02007e

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 56
    invoke-virtual/range {v44 .. v44}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v49, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 59
    .local v49, outgoingPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070105

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 60
    const v5, 0x7f0700f7

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 61
    const-string v5, "out_sec_payed"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 62
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 63
    const v5, 0x7f02007e

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 64
    invoke-virtual/range {v49 .. v49}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v46, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 67
    .local v46, outgoingCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f070103

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 68
    const v5, 0x7f0700f3

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 69
    const-string v5, "out_calls"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 70
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 71
    const v5, 0x7f02007e

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 72
    invoke-virtual/range {v46 .. v46}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v28, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 75
    .local v28, failedCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f070102

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 76
    const v5, 0x7f0700f2

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 77
    const-string v5, "calls_failed"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 78
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 79
    const v5, 0x7f02007e

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 81
    invoke-virtual/range {v28 .. v28}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v33, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 84
    .local v33, incoming:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070100

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 85
    const v5, 0x7f0700f6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 86
    const-string v5, "in_sec"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 87
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 88
    const v5, 0x7f02007e

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 89
    invoke-virtual/range {v33 .. v33}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v38, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 92
    .local v38, incomingPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070101

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 93
    const v5, 0x7f0700f9

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 94
    const-string v5, "in_sec_payed"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 95
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 96
    const v5, 0x7f02007e

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 98
    invoke-virtual/range {v38 .. v38}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v34, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 101
    .local v34, incomingCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f0700fe

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 102
    const v5, 0x7f0700f5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 103
    const-string v5, "in_calls"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 104
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 105
    const v5, 0x7f02007e

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 106
    invoke-virtual/range {v34 .. v34}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v42, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 109
    .local v42, missedCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f0700fd

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 110
    const v5, 0x7f0700f4

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 111
    const-string v5, "calls_missed"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 112
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 113
    const v5, 0x7f02007e

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 115
    invoke-virtual/range {v42 .. v42}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v48, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 119
    .local v48, outgoingMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070106

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 120
    const v5, 0x7f0700f1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 121
    const-string v5, "out_sec_month"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 122
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 123
    const v5, 0x7f02007e

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 125
    invoke-virtual/range {v48 .. v48}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v6, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 128
    .local v6, outgoingPayedMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070105

    invoke-virtual {v6, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 129
    const v5, 0x7f0700f0

    invoke-virtual {v6, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 130
    const-string v5, "out_sec_payed_month"

    invoke-virtual {v6, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 131
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    invoke-virtual {v6, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 132
    const v5, 0x7f02007e

    invoke-virtual {v6, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 133
    invoke-virtual {v6}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v47, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 136
    .local v47, outgoingCallsMonthly:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f070103

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 137
    const v5, 0x7f0700ef

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 138
    const-string v5, "out_calls_month"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 139
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 140
    const v5, 0x7f02007e

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 141
    invoke-virtual/range {v47 .. v47}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v45, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 144
    .local v45, outgoingBilledCallsMonthly:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f070104

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 145
    const-string v5, "out_billed_calls_month"

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 146
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 147
    const v5, 0x7f02007e

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 148
    invoke-virtual/range {v45 .. v45}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v29, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 151
    .local v29, failedCallsMonthly:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f070102

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 152
    const v5, 0x7f0700ee

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 153
    const-string v5, "calls_failed_month"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 154
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 155
    const v5, 0x7f02007e

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 157
    invoke-virtual/range {v29 .. v29}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v36, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 160
    .local v36, incomingMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070100

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 161
    const v5, 0x7f0700ed

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 162
    const-string v5, "in_sec_month"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 163
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 164
    const v5, 0x7f02007e

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 165
    invoke-virtual/range {v36 .. v36}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v7, Lnitro/phonestats/core/stat/CallSecondsStat;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lnitro/phonestats/core/stat/CallSecondsStat;-><init>(Landroid/content/Context;)V

    .line 168
    .local v7, incomingPayedMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;
    const v5, 0x7f070101

    invoke-virtual {v7, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setNameResource(I)V

    .line 169
    const v5, 0x7f0700fa

    invoke-virtual {v7, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setDescriptionResource(I)V

    .line 170
    const-string v5, "in_sec_payed_month"

    invoke-virtual {v7, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setKey(Ljava/lang/String;)V

    .line 171
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    invoke-virtual {v7, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 172
    const v5, 0x7f02007e

    invoke-virtual {v7, v5}, Lnitro/phonestats/core/stat/CallSecondsStat;->setIconResource(I)V

    .line 174
    invoke-virtual {v7}, Lnitro/phonestats/core/stat/CallSecondsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v35, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 177
    .local v35, incomingCallsMonthly:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f0700fe

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 178
    const v5, 0x7f0700ec

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 179
    const-string v5, "in_calls_month"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 180
    const v5, 0x7f07010c

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setUnitResource(I)V

    .line 181
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 182
    const v5, 0x7f02007e

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 183
    invoke-virtual/range {v35 .. v35}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v37, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 187
    .local v37, incomingPaidCallsMonthly:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f0700ff

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 188
    const-string v5, "in_billed_calls_month"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 189
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 190
    const v5, 0x7f02007e

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 191
    invoke-virtual/range {v37 .. v37}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v43, Lnitro/phonestats/core/stat/CallCountStat;

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallCountStat;-><init>(Landroid/content/Context;)V

    .line 195
    .local v43, missedCallsMonthly:Lnitro/phonestats/core/stat/CallCountStat;
    const v5, 0x7f0700fd

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setNameResource(I)V

    .line 196
    const v5, 0x7f0700eb

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setDescriptionResource(I)V

    .line 197
    const-string v5, "calls_missed_month"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setKey(Ljava/lang/String;)V

    .line 198
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 199
    const v5, 0x7f02007e

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallCountStat;->setIconResource(I)V

    .line 201
    invoke-virtual/range {v43 .. v43}, Lnitro/phonestats/core/stat/CallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v55, Lnitro/phonestats/core/stat/BilledCallCountStat;

    move-object/from16 v0, v55

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lnitro/phonestats/core/stat/BilledCallCountStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallCountStat;Lnitro/phonestats/core/stat/CallCountStat;)V

    .line 207
    .local v55, totalBilledCallCountStatMonthly:Lnitro/phonestats/core/stat/BilledCallCountStat;
    const-string v5, "billed_call_count"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/BilledCallCountStat;->setKey(Ljava/lang/String;)V

    .line 208
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/BilledCallCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 209
    const v5, 0x7f02007e

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/BilledCallCountStat;->setIconResource(I)V

    .line 210
    invoke-virtual/range {v55 .. v55}, Lnitro/phonestats/core/stat/BilledCallCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v50, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 215
    .local v50, outgoingSMS:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700e8

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 216
    const v5, 0x7f0700e2

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 217
    const-string v5, "sms_sent"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 218
    const v5, 0x7f07010f

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 219
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 220
    const v5, 0x7f0200a3

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 221
    invoke-virtual/range {v50 .. v50}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v52, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 224
    .local v52, outgoingSMSPaid:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700ea

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 225
    const v5, 0x7f0700e6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 226
    const-string v5, "sms_sent_paid"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 227
    const v5, 0x7f07010f

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 228
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 229
    const v5, 0x7f0200a3

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 230
    invoke-virtual/range {v52 .. v52}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v39, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 233
    .local v39, incomingSMS:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700e7

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 234
    const v5, 0x7f0700e1

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 235
    const-string v5, "sms_inbox"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 236
    const v5, 0x7f07010f

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 237
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 238
    const v5, 0x7f0200a3

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 239
    invoke-virtual/range {v39 .. v39}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v41, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 242
    .local v41, incomingSMSPaid:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700e9

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 243
    const v5, 0x7f0700e5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 244
    const-string v5, "sms_inbox_paid"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 245
    const v5, 0x7f07010f

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 246
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->TOTAL:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 247
    const v5, 0x7f0200a3

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 248
    invoke-virtual/range {v41 .. v41}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v51, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 253
    .local v51, outgoingSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700e8

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 254
    const v5, 0x7f0700e0

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 255
    const-string v5, "sms_sent_month"

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 256
    const v5, 0x7f07010f

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 257
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 258
    const v5, 0x7f0200a3

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 259
    invoke-virtual/range {v51 .. v51}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v8, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 262
    .local v8, outgoingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700ea

    invoke-virtual {v8, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 263
    const v5, 0x7f0700e4

    invoke-virtual {v8, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 264
    const-string v5, "sms_sent_paid_month"

    invoke-virtual {v8, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 265
    const v5, 0x7f07010f

    invoke-virtual {v8, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 266
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    invoke-virtual {v8, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 267
    const v5, 0x7f0200a3

    invoke-virtual {v8, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 268
    invoke-virtual {v8}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v40, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 271
    .local v40, incomingSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700e7

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 272
    const v5, 0x7f0700df

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 273
    const-string v5, "sms_inbox_month"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 274
    const v5, 0x7f07010f

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 275
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 276
    const v5, 0x7f0200a3

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 277
    invoke-virtual/range {v40 .. v40}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v9, Lnitro/phonestats/core/stat/SmsCountStat;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lnitro/phonestats/core/stat/SmsCountStat;-><init>(Landroid/content/Context;)V

    .line 280
    .local v9, incomingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;
    const v5, 0x7f0700e9

    invoke-virtual {v9, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setNameResource(I)V

    .line 281
    const v5, 0x7f0700e3

    invoke-virtual {v9, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setDescriptionResource(I)V

    .line 282
    const-string v5, "sms_inbox_paid_month"

    invoke-virtual {v9, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setKey(Ljava/lang/String;)V

    .line 283
    const v5, 0x7f07010f

    invoke-virtual {v9, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setUnitResource(I)V

    .line 284
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    invoke-virtual {v9, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 285
    const v5, 0x7f0200a3

    invoke-virtual {v9, v5}, Lnitro/phonestats/core/stat/SmsCountStat;->setIconResource(I)V

    .line 286
    invoke-virtual {v9}, Lnitro/phonestats/core/stat/SmsCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 298
    new-instance v18, Lnitro/phonestats/core/stat/AverageCountStat;

    const v5, 0x7f07010f

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/stat/AverageCountStat;-><init>(Landroid/content/Context;I)V

    .line 299
    .local v18, averageOutgoingMonthlySMS:Lnitro/phonestats/core/stat/AverageCountStat;
    const v5, 0x7f07008a

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setNameResource(I)V

    .line 300
    const v5, 0x7f07008c

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setDescriptionResource(I)V

    .line 301
    const-string v5, "sms_sent_month_average"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setKey(Ljava/lang/String;)V

    .line 302
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 303
    const v5, 0x7f0200a3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setIconResource(I)V

    .line 305
    invoke-virtual/range {v18 .. v18}, Lnitro/phonestats/core/stat/AverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v19, Lnitro/phonestats/core/stat/AverageCountStat;

    const v5, 0x7f070110

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/stat/AverageCountStat;-><init>(Landroid/content/Context;I)V

    .line 308
    .local v19, averageOutgoingSMSPaidCharacters:Lnitro/phonestats/core/stat/AverageCountStat;
    const v5, 0x7f07005d

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setNameResource(I)V

    .line 309
    const v5, 0x7f07005f

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setDescriptionResource(I)V

    .line 310
    const-string v5, "sms_sent_paid_average_characters"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setKey(Ljava/lang/String;)V

    .line 311
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 312
    const v5, 0x7f0200a3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setIconResource(I)V

    .line 314
    invoke-virtual/range {v19 .. v19}, Lnitro/phonestats/core/stat/AverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v21, Lnitro/phonestats/core/stat/AverageCountStat;

    const v5, 0x7f07010f

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/stat/AverageCountStat;-><init>(Landroid/content/Context;I)V

    .line 317
    .local v21, averageOutgoingWeeklySMS:Lnitro/phonestats/core/stat/AverageCountStat;
    const v5, 0x7f07008b

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setNameResource(I)V

    .line 318
    const v5, 0x7f07008d

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setDescriptionResource(I)V

    .line 319
    const-string v5, "sms_sent_daily_average"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setKey(Ljava/lang/String;)V

    .line 320
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->WEEKLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 321
    const v5, 0x7f0200a3

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/AverageCountStat;->setIconResource(I)V

    .line 323
    invoke-virtual/range {v21 .. v21}, Lnitro/phonestats/core/stat/AverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v17, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;-><init>(Landroid/content/Context;)V

    .line 326
    .local v17, averageOutgoingMonthlyCallminutes:Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;
    const v5, 0x7f070088

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setNameResource(I)V

    .line 328
    const v5, 0x7f07008e

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setDescriptionResource(I)V

    .line 329
    const-string v5, "out_sec_payed_week_average"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setKey(Ljava/lang/String;)V

    .line 330
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 331
    const v5, 0x7f02007e

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setIconResource(I)V

    .line 333
    invoke-virtual/range {v17 .. v17}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v20, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;-><init>(Landroid/content/Context;)V

    .line 336
    .local v20, averageOutgoingWeeklyCallminutes:Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;
    const v5, 0x7f070089

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setNameResource(I)V

    .line 338
    const v5, 0x7f07008f

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setDescriptionResource(I)V

    .line 339
    const-string v5, "out_sec_payed_month_average"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setKey(Ljava/lang/String;)V

    .line 340
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->WEEKLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 341
    const v5, 0x7f02007e

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setIconResource(I)V

    .line 343
    invoke-virtual/range {v20 .. v20}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v16, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;-><init>(Landroid/content/Context;Z)V

    .line 346
    .local v16, averageOutgoingCallsLenght:Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;
    const v5, 0x7f07005c

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setNameResource(I)V

    .line 347
    const v5, 0x7f07005e

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setDescriptionResource(I)V

    .line 348
    const-string v5, "out_calls_lenght_average"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setKey(Ljava/lang/String;)V

    .line 349
    sget-object v5, Lnitro/phonestats/core/stat/Stat$Timespan;->MONTHLY:Lnitro/phonestats/core/stat/Stat$Timespan;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setTimespan(Lnitro/phonestats/core/stat/Stat$Timespan;)V

    .line 350
    const v5, 0x7f0200a3

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->setIconResource(I)V

    .line 352
    invoke-virtual/range {v16 .. v16}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v59, Lnitro/phonestats/core/stat/TrafficStat;

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/TrafficStat;-><init>(Landroid/content/Context;)V

    .line 358
    .local v59, trafficMobileDaily:Lnitro/phonestats/core/stat/TrafficStat;
    const v5, 0x7f0700c2

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setNameResource(I)V

    .line 359
    const-string v5, "DAILY_MOBILE"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setKey(Ljava/lang/String;)V

    .line 360
    const-string v5, "DAILY_MOBILE_IN"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIncomingKey(Ljava/lang/String;)V

    .line 361
    const-string v5, "DAILY_MOBILE_OUT"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setOutgoingKey(Ljava/lang/String;)V

    .line 362
    const v5, 0x7f0700a8

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setDescriptionResource(I)V

    .line 363
    const v5, 0x7f02008a

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIconResource(I)V

    .line 364
    invoke-virtual/range {v59 .. v59}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v60, Lnitro/phonestats/core/stat/TrafficStat;

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/TrafficStat;-><init>(Landroid/content/Context;)V

    .line 367
    .local v60, trafficMobileMonthly:Lnitro/phonestats/core/stat/TrafficStat;
    const v5, 0x7f0700c3

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setNameResource(I)V

    .line 368
    const-string v5, "MONTHLY_MOBILE"

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setKey(Ljava/lang/String;)V

    .line 369
    const-string v5, "MONTHLY_MOBILE_IN"

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIncomingKey(Ljava/lang/String;)V

    .line 370
    const-string v5, "MONTHLY_MOBILE_OUT"

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setOutgoingKey(Ljava/lang/String;)V

    .line 371
    const v5, 0x7f0700a9

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setDescriptionResource(I)V

    .line 372
    const v5, 0x7f02008a

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIconResource(I)V

    .line 373
    invoke-virtual/range {v60 .. v60}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v58, Lnitro/phonestats/core/stat/TrafficStat;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/TrafficStat;-><init>(Landroid/content/Context;)V

    .line 376
    .local v58, trafficMobileAlltime:Lnitro/phonestats/core/stat/TrafficStat;
    const v5, 0x7f0700c4

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setNameResource(I)V

    .line 377
    const-string v5, "ALLTIME_MOBILE"

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setKey(Ljava/lang/String;)V

    .line 378
    const-string v5, "ALLTIME_MOBILE_IN"

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIncomingKey(Ljava/lang/String;)V

    .line 379
    const-string v5, "ALLTIME_MOBILE_OUT"

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setOutgoingKey(Ljava/lang/String;)V

    .line 380
    const v5, 0x7f0700aa

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setDescriptionResource(I)V

    .line 381
    const v5, 0x7f02008a

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIconResource(I)V

    .line 382
    invoke-virtual/range {v58 .. v58}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v62, Lnitro/phonestats/core/stat/TrafficStat;

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/TrafficStat;-><init>(Landroid/content/Context;)V

    .line 385
    .local v62, trafficWifiDaily:Lnitro/phonestats/core/stat/TrafficStat;
    const v5, 0x7f0700c2

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setNameResource(I)V

    .line 386
    const-string v5, "DAILY_WIFI"

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setKey(Ljava/lang/String;)V

    .line 387
    const-string v5, "DAILY_WIFI_IN"

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIncomingKey(Ljava/lang/String;)V

    .line 388
    const-string v5, "DAILY_WIFI_OUT"

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setOutgoingKey(Ljava/lang/String;)V

    .line 389
    const v5, 0x7f0700ab

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setDescriptionResource(I)V

    .line 390
    const v5, 0x7f0200b1

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIconResource(I)V

    .line 391
    invoke-virtual/range {v62 .. v62}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v63, Lnitro/phonestats/core/stat/TrafficStat;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/TrafficStat;-><init>(Landroid/content/Context;)V

    .line 394
    .local v63, trafficWifiMonthly:Lnitro/phonestats/core/stat/TrafficStat;
    const v5, 0x7f0700c3

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setNameResource(I)V

    .line 395
    const-string v5, "MONTHLY_WIFI"

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setKey(Ljava/lang/String;)V

    .line 396
    const-string v5, "MONTHLY_WIFI_IN"

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIncomingKey(Ljava/lang/String;)V

    .line 397
    const-string v5, "MONTHLY_WIFI_OUT"

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setOutgoingKey(Ljava/lang/String;)V

    .line 398
    const v5, 0x7f0700ac

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setDescriptionResource(I)V

    .line 399
    const v5, 0x7f0200b1

    move-object/from16 v0, v63

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIconResource(I)V

    .line 400
    invoke-virtual/range {v63 .. v63}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v61, Lnitro/phonestats/core/stat/TrafficStat;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/TrafficStat;-><init>(Landroid/content/Context;)V

    .line 403
    .local v61, trafficWifiAlltime:Lnitro/phonestats/core/stat/TrafficStat;
    const v5, 0x7f0700c4

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setNameResource(I)V

    .line 404
    const-string v5, "ALLTIME_WIFI"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setKey(Ljava/lang/String;)V

    .line 405
    const-string v5, "ALLTIME_WIFI_IN"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIncomingKey(Ljava/lang/String;)V

    .line 406
    const-string v5, "ALLTIME_WIFI_OUT"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setOutgoingKey(Ljava/lang/String;)V

    .line 407
    const v5, 0x7f0700ad

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setDescriptionResource(I)V

    .line 408
    const v5, 0x7f0200b1

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficStat;->setIconResource(I)V

    .line 409
    invoke-virtual/range {v61 .. v61}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v31, Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/CallSecondsStat;)V

    .line 414
    .local v31, freeMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;
    const-string v5, "free_min"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->setKey(Ljava/lang/String;)V

    .line 415
    const v5, 0x7f02007e

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->setIconResource(I)V

    .line 416
    invoke-virtual/range {v31 .. v31}, Lnitro/phonestats/core/stat/CallMinuteLimitStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v30, Lnitro/phonestats/core/stat/SmsCountLimitStat;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v8, v9, v2}, Lnitro/phonestats/core/stat/SmsCountLimitStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/CallMinuteLimitStat;)V

    .line 420
    .local v30, freeMessages:Lnitro/phonestats/core/stat/SmsCountLimitStat;
    const-string v5, "free_sms"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->setKey(Ljava/lang/String;)V

    .line 421
    const v5, 0x7f0200a3

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->setIconResource(I)V

    .line 422
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/stat/SmsCountLimitStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v32, Lnitro/phonestats/core/stat/TrafficLimitStat;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/stat/TrafficLimitStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TrafficStat;)V

    .line 425
    .local v32, freeMobileData:Lnitro/phonestats/core/stat/TrafficLimitStat;
    const-string v5, "free_mobile_data"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficLimitStat;->setKey(Ljava/lang/String;)V

    .line 426
    const v5, 0x7f02008a

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficLimitStat;->setIconResource(I)V

    .line 427
    invoke-virtual/range {v32 .. v32}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v4, Lnitro/phonestats/core/stat/UnitLimitStat;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lnitro/phonestats/core/stat/UnitLimitStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/SmsCountStat;)V

    .line 431
    .local v4, freeUnits:Lnitro/phonestats/core/stat/UnitLimitStat;
    const-string v5, "free_units"

    invoke-virtual {v4, v5}, Lnitro/phonestats/core/stat/UnitLimitStat;->setKey(Ljava/lang/String;)V

    .line 432
    const v5, 0x7f0200ab

    invoke-virtual {v4, v5}, Lnitro/phonestats/core/stat/UnitLimitStat;->setIconResource(I)V

    .line 433
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v4, v5}, Lnitro/phonestats/core/stat/UnitLimitStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 434
    invoke-virtual {v4}, Lnitro/phonestats/core/stat/UnitLimitStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v53, Lnitro/phonestats/core/stat/RemainingDaysStat;

    move-object/from16 v0, v53

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/stat/RemainingDaysStat;-><init>(Landroid/content/Context;)V

    .line 438
    .local v53, remainingDays:Lnitro/phonestats/core/stat/RemainingDaysStat;
    const-string v5, "remaining_days"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/RemainingDaysStat;->setKey(Ljava/lang/String;)V

    .line 439
    const v5, 0x7f020096

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/RemainingDaysStat;->setIconResource(I)V

    .line 440
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/RemainingDaysStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 441
    invoke-virtual/range {v53 .. v53}, Lnitro/phonestats/core/stat/RemainingDaysStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v12, Lnitro/phonestats/core/stat/CallCostStat;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v55

    invoke-direct {v12, v0, v1, v2}, Lnitro/phonestats/core/stat/CallCostStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallMinuteLimitStat;Lnitro/phonestats/core/stat/BilledCallCountStat;)V

    .line 445
    .local v12, callCosts:Lnitro/phonestats/core/stat/CallCostStat;
    const-string v5, "costs_call"

    invoke-virtual {v12, v5}, Lnitro/phonestats/core/stat/CallCostStat;->setKey(Ljava/lang/String;)V

    .line 446
    const v5, 0x7f02007e

    invoke-virtual {v12, v5}, Lnitro/phonestats/core/stat/CallCostStat;->setIconResource(I)V

    .line 447
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->CALLS:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v12, v5}, Lnitro/phonestats/core/stat/CallCostStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 448
    invoke-virtual {v12}, Lnitro/phonestats/core/stat/CallCostStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v13, Lnitro/phonestats/core/stat/SmsCostStat;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-direct {v13, v0, v1}, Lnitro/phonestats/core/stat/SmsCostStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/SmsCountLimitStat;)V

    .line 451
    .local v13, smsCosts:Lnitro/phonestats/core/stat/SmsCostStat;
    const-string v5, "costs_sms"

    invoke-virtual {v13, v5}, Lnitro/phonestats/core/stat/SmsCostStat;->setKey(Ljava/lang/String;)V

    .line 452
    const v5, 0x7f0200a3

    invoke-virtual {v13, v5}, Lnitro/phonestats/core/stat/SmsCostStat;->setIconResource(I)V

    .line 453
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->SMS:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v13, v5}, Lnitro/phonestats/core/stat/SmsCostStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 454
    invoke-virtual {v13}, Lnitro/phonestats/core/stat/SmsCostStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v14, Lnitro/phonestats/core/stat/TrafficCostStat;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-direct {v14, v0, v1}, Lnitro/phonestats/core/stat/TrafficCostStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TrafficLimitStat;)V

    .line 457
    .local v14, trafficCosts:Lnitro/phonestats/core/stat/TrafficCostStat;
    const-string v5, "costs_mobile_data"

    invoke-virtual {v14, v5}, Lnitro/phonestats/core/stat/TrafficCostStat;->setKey(Ljava/lang/String;)V

    .line 458
    const v5, 0x7f02008a

    invoke-virtual {v14, v5}, Lnitro/phonestats/core/stat/TrafficCostStat;->setIconResource(I)V

    .line 459
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->TRAFFIC:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v14, v5}, Lnitro/phonestats/core/stat/TrafficCostStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 460
    invoke-virtual {v14}, Lnitro/phonestats/core/stat/TrafficCostStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v15, Lnitro/phonestats/core/stat/UnitCostsStats;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v4}, Lnitro/phonestats/core/stat/UnitCostsStats;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/UnitLimitStat;)V

    .line 463
    .local v15, unitCosts:Lnitro/phonestats/core/stat/UnitCostsStats;
    const-string v5, "costs_units"

    invoke-virtual {v15, v5}, Lnitro/phonestats/core/stat/UnitCostsStats;->setKey(Ljava/lang/String;)V

    .line 464
    const v5, 0x7f0200ab

    invoke-virtual {v15, v5}, Lnitro/phonestats/core/stat/UnitCostsStats;->setIconResource(I)V

    .line 465
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v15, v5}, Lnitro/phonestats/core/stat/UnitCostsStats;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 466
    invoke-virtual {v15}, Lnitro/phonestats/core/stat/UnitCostsStats;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v10, Lnitro/phonestats/core/stat/CombinedCostStat;

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lnitro/phonestats/core/stat/CombinedCostStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallCostStat;Lnitro/phonestats/core/stat/SmsCostStat;Lnitro/phonestats/core/stat/TrafficCostStat;Lnitro/phonestats/core/stat/UnitCostsStats;)V

    .line 470
    .local v10, allCosts:Lnitro/phonestats/core/stat/CombinedCostStat;
    const-string v5, "costs_combined"

    invoke-virtual {v10, v5}, Lnitro/phonestats/core/stat/CombinedCostStat;->setKey(Ljava/lang/String;)V

    .line 471
    const v5, 0x7f020087

    invoke-virtual {v10, v5}, Lnitro/phonestats/core/stat/CombinedCostStat;->setIconResource(I)V

    .line 472
    invoke-virtual {v10}, Lnitro/phonestats/core/stat/CombinedCostStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v56, Lnitro/phonestats/core/stat/TotalCostsStat;

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lnitro/phonestats/core/stat/TotalCostsStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CombinedCostStat;)V

    .line 475
    .local v56, totalCosts:Lnitro/phonestats/core/stat/TotalCostsStat;
    const-string v5, "costs_total"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TotalCostsStat;->setKey(Ljava/lang/String;)V

    .line 476
    const v5, 0x7f020087

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TotalCostsStat;->setIconResource(I)V

    .line 477
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TotalCostsStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 478
    invoke-virtual/range {v56 .. v56}, Lnitro/phonestats/core/stat/TotalCostsStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v22, Lnitro/phonestats/core/stat/CostLimitStat;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/stat/CostLimitStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TotalCostsStat;)V

    .line 481
    .local v22, costLimitStat:Lnitro/phonestats/core/stat/CostLimitStat;
    const-string v5, "free_costs"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CostLimitStat;->setKey(Ljava/lang/String;)V

    .line 482
    const v5, 0x7f020087

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CostLimitStat;->setIconResource(I)V

    .line 483
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CostLimitStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 484
    invoke-virtual/range {v22 .. v22}, Lnitro/phonestats/core/stat/CostLimitStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v25, Lnitro/phonestats/core/stat/MinuteEstimationStat;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lnitro/phonestats/core/stat/MinuteEstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/CallSecondsStat;)V

    .line 490
    .local v25, estimatedMinutes:Lnitro/phonestats/core/stat/MinuteEstimationStat;
    const-string v5, "estimated_min"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->setKey(Ljava/lang/String;)V

    .line 491
    const v5, 0x7f02007e

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->setIconResource(I)V

    .line 492
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->CALLS:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 493
    invoke-virtual/range {v25 .. v25}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v24, Lnitro/phonestats/core/stat/SmsEstimationStat;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v8, v9, v2}, Lnitro/phonestats/core/stat/SmsEstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/MinuteEstimationStat;)V

    .line 497
    .local v24, estimatedMessages:Lnitro/phonestats/core/stat/SmsEstimationStat;
    const-string v5, "estimated_sms"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsEstimationStat;->setKey(Ljava/lang/String;)V

    .line 498
    const v5, 0x7f0200a3

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsEstimationStat;->setIconResource(I)V

    .line 499
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->SMS:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/SmsEstimationStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 500
    invoke-virtual/range {v24 .. v24}, Lnitro/phonestats/core/stat/SmsEstimationStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v23, Lnitro/phonestats/core/stat/CostEstimationStat;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lnitro/phonestats/core/stat/CostEstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CostStat;)V

    .line 504
    .local v23, estimatedCosts:Lnitro/phonestats/core/stat/CostEstimationStat;
    const-string v5, "estimated_costs"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CostEstimationStat;->setKey(Ljava/lang/String;)V

    .line 505
    const v5, 0x7f020087

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/CostEstimationStat;->setIconResource(I)V

    .line 506
    invoke-virtual/range {v23 .. v23}, Lnitro/phonestats/core/stat/CostEstimationStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v57, Lnitro/phonestats/core/stat/TotalCostEstimationStat;

    move-object/from16 v0, v57

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lnitro/phonestats/core/stat/TotalCostEstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CostStat;)V

    .line 509
    .local v57, totalEstimatedCosts:Lnitro/phonestats/core/stat/TotalCostEstimationStat;
    const-string v5, "estimated_total_costs"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TotalCostEstimationStat;->setKey(Ljava/lang/String;)V

    .line 510
    const v5, 0x7f020087

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TotalCostEstimationStat;->setIconResource(I)V

    .line 511
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TotalCostEstimationStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 512
    invoke-virtual/range {v57 .. v57}, Lnitro/phonestats/core/stat/TotalCostEstimationStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v26, Lnitro/phonestats/core/stat/TrafficEstimationStat;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/stat/TrafficEstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TrafficStat;)V

    .line 515
    .local v26, estimatedTraffic:Lnitro/phonestats/core/stat/TrafficEstimationStat;
    const-string v5, "estimated_mobile_data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->setKey(Ljava/lang/String;)V

    .line 516
    const v5, 0x7f02008a

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->setIconResource(I)V

    .line 517
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->TRAFFIC:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 518
    invoke-virtual/range {v26 .. v26}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v27, Lnitro/phonestats/core/stat/UnitsEstimationStat;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lnitro/phonestats/core/stat/UnitsEstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/MinuteEstimationStat;Lnitro/phonestats/core/stat/SmsEstimationStat;)V

    .line 521
    .local v27, estimatedUnits:Lnitro/phonestats/core/stat/UnitsEstimationStat;
    const-string v5, "estimated_units"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/UnitsEstimationStat;->setKey(Ljava/lang/String;)V

    .line 522
    const v5, 0x7f0200ab

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/UnitsEstimationStat;->setIconResource(I)V

    .line 523
    sget-object v5, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lnitro/phonestats/core/stat/UnitsEstimationStat;->setOpensView(Lnitro/phonestats/core/stat/Stat$ViewType;)V

    .line 524
    invoke-virtual/range {v27 .. v27}, Lnitro/phonestats/core/stat/UnitsEstimationStat;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    return-void

    .line 292
    .end local v4           #freeUnits:Lnitro/phonestats/core/stat/UnitLimitStat;
    .end local v10           #allCosts:Lnitro/phonestats/core/stat/CombinedCostStat;
    .end local v12           #callCosts:Lnitro/phonestats/core/stat/CallCostStat;
    .end local v13           #smsCosts:Lnitro/phonestats/core/stat/SmsCostStat;
    .end local v14           #trafficCosts:Lnitro/phonestats/core/stat/TrafficCostStat;
    .end local v15           #unitCosts:Lnitro/phonestats/core/stat/UnitCostsStats;
    .end local v16           #averageOutgoingCallsLenght:Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;
    .end local v17           #averageOutgoingMonthlyCallminutes:Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;
    .end local v18           #averageOutgoingMonthlySMS:Lnitro/phonestats/core/stat/AverageCountStat;
    .end local v19           #averageOutgoingSMSPaidCharacters:Lnitro/phonestats/core/stat/AverageCountStat;
    .end local v20           #averageOutgoingWeeklyCallminutes:Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;
    .end local v21           #averageOutgoingWeeklySMS:Lnitro/phonestats/core/stat/AverageCountStat;
    .end local v22           #costLimitStat:Lnitro/phonestats/core/stat/CostLimitStat;
    .end local v23           #estimatedCosts:Lnitro/phonestats/core/stat/CostEstimationStat;
    .end local v24           #estimatedMessages:Lnitro/phonestats/core/stat/SmsEstimationStat;
    .end local v25           #estimatedMinutes:Lnitro/phonestats/core/stat/MinuteEstimationStat;
    .end local v26           #estimatedTraffic:Lnitro/phonestats/core/stat/TrafficEstimationStat;
    .end local v27           #estimatedUnits:Lnitro/phonestats/core/stat/UnitsEstimationStat;
    .end local v30           #freeMessages:Lnitro/phonestats/core/stat/SmsCountLimitStat;
    .end local v31           #freeMinutes:Lnitro/phonestats/core/stat/CallMinuteLimitStat;
    .end local v32           #freeMobileData:Lnitro/phonestats/core/stat/TrafficLimitStat;
    .end local v53           #remainingDays:Lnitro/phonestats/core/stat/RemainingDaysStat;
    .end local v56           #totalCosts:Lnitro/phonestats/core/stat/TotalCostsStat;
    .end local v57           #totalEstimatedCosts:Lnitro/phonestats/core/stat/TotalCostEstimationStat;
    .end local v58           #trafficMobileAlltime:Lnitro/phonestats/core/stat/TrafficStat;
    .end local v59           #trafficMobileDaily:Lnitro/phonestats/core/stat/TrafficStat;
    .end local v60           #trafficMobileMonthly:Lnitro/phonestats/core/stat/TrafficStat;
    .end local v61           #trafficWifiAlltime:Lnitro/phonestats/core/stat/TrafficStat;
    .end local v62           #trafficWifiDaily:Lnitro/phonestats/core/stat/TrafficStat;
    .end local v63           #trafficWifiMonthly:Lnitro/phonestats/core/stat/TrafficStat;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lnitro/phonestats/core/stat/Stat;

    .line 293
    .local v54, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    new-instance v11, Lnitro/phonestats/core/helper/NumberCountMap;

    invoke-direct {v11}, Lnitro/phonestats/core/helper/NumberCountMap;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lnitro/phonestats/core/stat/Stat;->setTopSubStats(Lnitro/phonestats/core/helper/NumberCountMap;)V

    goto/16 :goto_0
.end method
